// Winning route, worked out from the rules. "go <Room>" walks there by the shortest safe path;
// everything else is one command. Compiled to walkthrough.json by build_walkthrough.js.
module.exports = `
look Vinduskarm | take Fyrstikker | look Vinduskarm | take Sovedrikk
look Hylla | take Nøkkel | use Nøkkel
go Kjeller | look Vegghylle | take Flatbrød | take Seilduk
go Tun | take Ved | go Hjemme | use Ved | use Fyrstikker | drop Fyrstikker
go Fjellside | look Veikant | take Kniv
go Fjelltopp | take Skjære
go Vei | look Horntre | take Bukkehorn
go Lysning | go Innisekk | take Øks | use Kniv
drop Kniv | look Kryssbusk | take Blåserør
go Skog | use Øks | take Fløyta
go Vindfall | look Fallhol | take Skålbrudd
go Eika | use Øks | use Flisa | use Sovedrikk | use Seilduk
go Skip | take Pølsa | go Haremark | use Fløyta | use Fløyta | drop Fløyta
go Prinsesserom | talk Prinsessa 3 | talk Prinsessa 3 | talk Prinsessa 1 | talk Prinsessa 2 | talk Prinsessa 4
drop Skjære | drop Skålbrudd | drop Bukkehorn
go Kongsgård | talk Pål 3
go Hedalskog | look Øks | use Øks | take Trolløye | give Trolløye | take Bukkeskinn
go Brua | use Bukkeskinn | go Sørforbru
go Strand | look Strandstein | take Spade
go Hulen | look Hulevegg | look Flaggermus | take Glassnøkkel
go Strand | use Glassnøkkel | go Naust | look Båten | take Oterskinn
go Strand | use Oterskinn | go Øya
use Spade | look Hull | use Blåserør | look Skrinet | take Kalvehale | give Oterskinn
`.split(/[|\n]/).map(s => s.trim()).filter(Boolean);
