#Illustrative Command Sequence File Description
[Header]
Version = 4.2
Hash Algorithm = sha256
Engine = ANY
# Engine = CAAM
Engine Configuration = 0
Certificate Format = X509
Signature Format = CMS
[Install SRK]
File = "../crts/SRK_1_2_3_4_table.bin"
# Index of the key location in the SRK table to be installed
Source index = 0
[Install CSFK]
# Key used to authenticate the CSF data
File = "../crts/CSF1_1_sha256_2048_65537_v3_usr_crt.pem"
[Authenticate CSF]
[Install Key]
# Key slot index used to authenticate the key to be installed
Verification index = 0
# Target key slot in HAB key store where key will be installed
Target Index = 2
# Key to install
File= "../crts/IMG1_1_sha256_2048_65537_v3_usr_crt.pem"
[Unlock]
Engine = CAAM
Features = RNG	
[Authenticate Data]
# Key slot index used to authenticate the image data
Verification index = 2
# Address Offset Length Data File Path
# Blocks = 0x177fb000 0x000 0x48000 "u-boot.imx"
# Blocks = 0x00910000 0x0000002c 0x000002f0 "u-boot.imx",\
#   0x177ff400 0x00000000 0x00076c00 "u-boot.imx"
