# encoding: utf-8

module Datafile

class FileWorker   ## check: rename to FileDatafileWorker?? or FileDatafile  -why, why not ??

  include LogUtils::Logging

  def initialize( datafile )
    @datafile = datafile
  end

  def download
    ## note: do NOTHING for now; assume repo already present (unpacked) on local filesystem
  end

  def read
    @datafile.datasets.each do |dataset|
      dataset.file_worker.read
    end
  end

  def dump
    @datafile.datasets.each do |dataset|
      dataset.file_worker.dump
    end
  end

end  # class FileWorker
end # module Datafile
