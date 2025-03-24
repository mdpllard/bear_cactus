# bear_cactus
Adding additional bear species to the Zoonomia 241-species Cactus Alignment

Species added to the alignment:
- Tremarctos ornatus
- Ursus malayanus
- Ursus thibetanus
- Ursus americanus
- Ursus arctos

Steps:
- Repeat masking with RepeatModeler and RepeatMasker
- Addition of species to Cactus alignment (one-by-one):
  - Each addition requires to scripts: bottom_half_stepX.sh and top_half_stepX.sh
  - bottom_half needs to be run first, then top_half
  - Run both halves for a step before moving on to the next
  - Each step has a similarly-named .txt file that is used as input
