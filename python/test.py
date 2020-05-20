import sys
sys.path.append('../build/python/')
import openvslam_python

config = openvslam_python.config(config_file_path="./config.yaml")
SLAM = openvslam_python.system(cfg=config, vocab_file_path="./orb_vocab.dbow2")
SLAM.startup()
