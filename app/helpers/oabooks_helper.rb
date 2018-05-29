module OabooksHelper
  require 'open-uri'
	# def generate_zip(&block)
 #  epub = root_path+"open-access/epub/"+@oabook.id.to_s+"/"+@oabook.epub_identifier
 #  # base temp dir
 #  temp_dir = Dir.mktmpdir
 #  # path for zip we are about to create, I find that ruby zip needs to write to a real file
 #  zip_path = File.join(temp_dir, @oabook.epub_identifier+'.zip')
 #  Zip::ZipFile.open(zip_path, true) do |zipfile|
    
 #      zipfile.get_output_stream(epub) do |io|
 #        io.write epub.read
 #      end
   
 #  end
 #  # yield the zipfile to the action
 #  block.call @oabook.epub_identifier+'.zip', zip_path
	# ensure
	#   # clean up the tempdir now!
	#   FileUtils.rm_rf temp_dir if temp_dir
	# end

  def download_epub
    download = open('var/www/tupress/public/uploads/oabooks/'+@oabook.epub_identifier)
    IO.copy_stream(download, @oabook.epub_identifier)
  end
  def download_mobi
    # url  = URI.escape(root_path+'public'+@oabook.mobi.url)
    # data = open(url).read

    # send_data data, filename: @oabook.mobi.identifier

    
  end
end
