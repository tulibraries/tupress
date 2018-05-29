module OabooksHelper
	def generate_zip(&block)
  epub = root_path+"open-access/epub/"+@oabook.id.to_s+"/"+@oabook.epub_identifier
  # base temp dir
  temp_dir = Dir.mktmpdir
  # path for zip we are about to create, I find that ruby zip needs to write to a real file
  zip_path = File.join(temp_dir, @oabook.epub_identifier+'.zip')
  Zip::ZipFile.open(zip_path, true) do |zipfile|
    
      zipfile.get_output_stream(epub) do |io|
        io.write epub.read
      end
   
  end
  # yield the zipfile to the action
  block.call @oabook.epub_identifier+'.zip', zip_path
	ensure
	  # clean up the tempdir now!
	  FileUtils.rm_rf temp_dir if temp_dir
	end
end
