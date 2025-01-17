#!/bin/bash

#CORPUS_RAW="/mnt/configblob/users/v-jinnian/wiki/text"
CORPUS_RAW="/mnt/configblob/users/v-jinnian/wiki/text/AA/wiki_00"
BERT_BASE_DIR="/mnt/configblob/users/v-jinnian/bert/trained_models/uncased_L-12_H-768_A-12"
CORPUS_JSON_DIR="/mnt/configblob/users/v-jinnian/bert/processed_data"

STUDENT_CONFIG_DIR="/mnt/configblob/users/v-jinnian/bert/trained_models/tinybert/General_TinyBERT_4L_312D"
GENERAL_TINYBERT_DIR="output"

#python pregenerate_training_data.py --train_corpus $CORPUS_RAW --bert_model $BERT_BASE_DIR  --do_lower_case --epochs_to_generate 3 --output_dir $CORPUS_JSON_DIR
python general_distill.py --pregenerated_data $CORPUS_JSON_DIR --teacher_model $BERT_BASE_DIR --student_model $STUDENT_CONFIG_DIR --do_lower_case --train_batch_size 256 --output_dir $GENERAL_TINYBERT_DIR 