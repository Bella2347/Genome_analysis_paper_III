# Perl script to count the transcripts per million base pairs for each gene

# Count up the total reads in a sample and divide that number by 1,000,000 – this is our “per million” scaling factor.
# Divide the read counts by the “per million” scaling factor. This normalizes for sequencing depth, giving you reads per million (RPM)
# Divide the RPM values by the length of the gene, in kilobases.
