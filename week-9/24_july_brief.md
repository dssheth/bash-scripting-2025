- [Back to Homepage](/README.md)

# 24 July 2025 Report - Day 60 - GPRC6A Brief

## Content

Today I did the tblastx and tblastn again and tried to find if there is any mismatch in exons. I made a tool in bash script to find the start codon and the stop codons in the sequence given and highlight the start codon with green and stop codons with red. This tool takes the input of sequence through file and then gives the output in the browser by html file. With this tool I found that there are  in-frame premature stop codons in the CDS of bos taurus and also checked that with the alignment results of the cds of humand and cow gprc6a gene. The protein of the sequence of subject (cow) shows X at the position of stop codons. Also the online cds translation result analyzer showed the stop codons in the sequence.       

Also added the notes of chapter-7 and 8 in the notes section.

The link for the tool for finding the in-frame stop codons: https://github.com/dssheth/Codon_Highlighter