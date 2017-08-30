class File
  def self.guess_filetype(filename)
    `file --mime -b "#{filename}"`.split(";").first || MIME_TYPES_FROM_EXTENSION[File.extname(filename)]
  end
end
