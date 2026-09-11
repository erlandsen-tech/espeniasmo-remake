#!/usr/bin/env python3
"""Static dev server for the web remake that disables browser caching, so edits show on reload.

    python3 tools/serve.py [port]    # default 8797, serves the repo root on 127.0.0.1
"""
import functools
import http.server
import sys
from pathlib import Path


class NoCacheHandler(http.server.SimpleHTTPRequestHandler):
    def end_headers(self):
        self.send_header('Cache-Control', 'no-store')
        super().end_headers()


port = int(sys.argv[1]) if len(sys.argv) > 1 else 8797
handler = functools.partial(NoCacheHandler, directory=str(Path(__file__).resolve().parent.parent))
print(f'http://127.0.0.1:{port}/')
http.server.ThreadingHTTPServer(('127.0.0.1', port), handler).serve_forever()
