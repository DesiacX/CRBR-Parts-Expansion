#Put this code in Dolphin to use Codesets loaded by Riivolution.
##########################
External Codeset Dolphin Side [DesiacX]
##########################
200000F0 02000000
21800000 00D0C0DE
21800004 00D0C0DE
4E000018 00000000
4C000000 00001858
04001848 81800008
64000000 00000000
E0000000 80008000


#Put this code at the end of the Codeset file that gets loaded in by Riivolution. This moves the Code Handler from the Riivolution Codes back to the Dolphin codes. Must be the last code.
#################################
External Codeset Closer [DesiacX]
#################################
* 80000000 80001858
* 8A00040F 00001848
* 64000000 00000000
