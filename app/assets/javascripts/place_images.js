//variables for url and params are set in the view.

$(document).on('ready',function(){
  if(!$('#pickfiles').length) return;

  var uploader = new plupload.Uploader({
    runtimes : 'html5,flash,silverlight,html4',
    browse_button : 'pickfiles',
    container: document.getElementById('container'),
    url : place_images_upload,
    file_data_name: 'place_image[image]',
    flash_swf_url : '../js/Moxie.swf',
    silverlight_xap_url : '../js/Moxie.xap',
    multipart_params: multipart_params_data,

    init: {
      PostInit: function() {
        multipart_params_data = null;
        place_images_upload = null;
        document.getElementById('filelist').innerHTML = '';
        document.getElementById('uploadfiles').onclick = function() {
          uploader.start();
          return false;
        };
      },
      FilesAdded: function(up, files) {
        plupload.each(files, function(file) {
          document.getElementById('filelist').innerHTML += '<div id="' + file.id + '">' + file.name + ' (' + plupload.formatSize(file.size) + ') <b></b></div>';
        });
        setTimeout(function () { up.start(); }, 100);
      },
      UploadProgress: function(up, file) {
        document.getElementById(file.id).getElementsByTagName('b')[0].innerHTML = '<span>' + file.percent + "%</span>";
      },
      UploadComplete: function(up, file){
        location.replace(location.href.replace('first_time',''));
      },
      Error: function(up, err) {
        document.getElementById('console').appendChild(document.createTextNode("\nError #" + err.code + ": " + err.message));
      }
    }
  });
  uploader.init();

});
