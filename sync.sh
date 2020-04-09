# vimdiff to syncronize
#
# dp   move code ->  (put)
# do   move code <-  (get)
# ]c   jump next  ( [c  jump previous )


case $1 in
  triton)
    vimdiff configs/fgci-centos7-{dev,generic}/anaconda/build_config.yaml
    ;;
  fgci)
    vimdiff configs/{fgci-centos7-generic,fgi-cvmfs-centos7-generic}/anaconda/build_config.yaml
    ;;
  aaltodev)
    vimdiff configs/{fgci-centos7-dev,aalto-ubuntu1804-dev}/anaconda/build_config.yaml
    ;;
  aalto)
    vimdiff configs/aalto-ubuntu1804-{dev,generic}/anaconda/build_config.yaml
    ;;
  *)
    echo "options: triton,fgci.  aaltodev, aalto"
 esac
