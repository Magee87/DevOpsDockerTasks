# MULTI-STAGE FRONTEND


Difference between these files:
*frontend			586MB*  **Start
*frontend-after		584MB* **-2MB
*frontend-after-a	582MB* **-4MB
*frontend-after-a-a	128MB* **-458MB

Original file was 586MB and then we reduce size with small changes (*frontend-after*)
Next step i looked for smaller image to use. i already was using alphine, so i switch version so it was again little bit smaller.(*frontend-after-a-a*)	 

Last step was multi-stage build.
*frontend-after-a-a 	SIZE 128MB* so difference was over 450MB.









