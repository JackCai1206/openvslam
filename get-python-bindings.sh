docker build -t openvslam-pybind -f Dockerfile.pybind . && \
docker run --name openvslam-pybind openvslam-pybind && \
docker cp openvslam-pybind:/openvslam/ ./openvslam/ && \
docker rm openvslam-pybind && \
docker image rm openvslam-pybind
