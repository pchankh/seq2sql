MP_NUM_THREADS=2 THEANO_FLAGS=device=cuda0 flags=-lopenblas python src/main.py \
	-d 200 \
	-i 100 \
	-o 100 \
	-p attention \
	-u 1 \
	-t 15,5,5,5 \
	-c lstm \
	-m attn2hist \
	--stats-file result/stats_gru.json \
	--domain overnight-publications \
	-k 0 \
	--dev-seed 0 \
	--model-seed 0 \
	--train-data data/overnight/publications_train.tsv \
	--dev-data data/overnight/publications_test.tsv \
	--train-source-file data/wikisql/train.jsonl \
	--train-db-file data/wikisql/train.db \
	--train-table-file data/wikisql/train.tables.jsonl  
