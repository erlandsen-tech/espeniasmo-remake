// Run with: npx eslint@10 .
// Self-contained on purpose: no imports, so it works through npx without a package.json.
const browser = {
  window: 'readonly', document: 'readonly', localStorage: 'readonly', self: 'readonly',
  console: 'readonly', confirm: 'readonly', fetch: 'readonly', setTimeout: 'readonly', clearTimeout: 'readonly', Image: 'readonly',
};
const node = {
  require: 'readonly', module: 'writable', __dirname: 'readonly', process: 'readonly', console: 'readonly',
};

const correctness = {
  'no-undef': 'error',
  'no-unused-vars': ['error', { args: 'none', caughtErrors: 'none' }],
  'no-redeclare': 'error',
  'no-dupe-keys': 'error',
  'no-duplicate-case': 'error',
  'no-unreachable': 'error',
  'no-fallthrough': 'error',
  'no-self-assign': 'error',
  'no-self-compare': 'error',
  'no-cond-assign': 'error',
  'no-constant-condition': ['error', { checkLoops: false }],
  'use-isnan': 'error',
  'valid-typeof': 'error',
  eqeqeq: ['error', 'always', { null: 'ignore' }],
};

export default [
  { ignores: ['C/**', 'ESPEN/**', 'START/**', 'GT/**', 'METAWNDO/**', 'disasm/**', 'assets/**', '.venv/**'] },
  {
    files: ['js/**/*.js'],
    languageOptions: {
      sourceType: 'script',
      // engine.js and data.js publish these on the global object for ui.js; engine.js is also a Node module.
      globals: { ...browser, Game: 'readonly', Assets: 'readonly', DIRS: 'readonly', module: 'writable' },
    },
    rules: correctness,
  },
  {
    files: ['test/**/*.js'],
    languageOptions: { sourceType: 'commonjs', globals: node },
    rules: correctness,
  },
];
