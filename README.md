# ncbi_genome_download
快速下载ncbi genome文件

方法详见 https://github.com/sunbeam-labs/sbx_krakenhll
注：krakenhll现已更新为krakenuniq  https://github.com/fbreitwieser/krakenuniq

# 方法：
1. NCBI下载assembly_summary.txt

wget -c ftp://ftp.ncbi.nlm.nih.gov/genomes/genbank/bacteria/assembly_summary.txt

2. 筛选所需下载基因组

以选取最优基因组为例

perl select.genome.pl assembly_summary.txt > select.assembly.uniq.txt

3. download 

mkdir -p microbia/library/taxid

cp select.assembly.uniq.txt microbia/library/taxid/assembly_summary.txt

krakenhll-download refseq/taxid/Any --db microbia  --threads 20

即可快速下载所需基因组

