python create_patches_fp.py --source /scratch/uceems6/Dataset/blca/ \
                            --save_dir /scratch/uceems6/Dataset/RESULTS_DIRECTORY/blca/ \
                            --patch_size 256 \
                            --seg \
                            --patch

CUDA_VISIBLE_DEVICES=2 python extract_features_fp.py --data_h5_dir /scratch/uceems6/Dataset/RESULTS_DIRECTORY/blca/ \
                                                     --data_slide_dir /scratch/uceems6/Dataset/blca/ \
                                                     --csv_path /scratch/uceems6/Dataset/RESULTS_DIRECTORY/blca/process_list_autogen.csv \
                                                     --feat_dir /scratch/uceems6/Dataset/FEATURES_DIRECTORY/blca \
                                                     --batch_size 512 \
                                                     --slide_ext .svs