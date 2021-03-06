if(!SI.Widgets.Uploader){SI.Widgets.Uploader = {}};
SI.Widget.Uploader = function  (options) { 
    if (!(this instanceof SI.Widget.Uploader)) { return new SI.Widget.Uploader(options); }

    options = typeof options !== 'undefined' ? options : {};
    if ("Id" in options) { this.Id = options.Id; } else { this.Id = SI.Tools.Element.SafeId("Uploader");}
    this.Input = {...options};
    SI.Widgets.Uploader[this.Id] = this;

    this.Defaults = {
        "Name": { "value": "Window", "type": "TEXT" },
        "Parent": { "value": "", "type": "ELE" },
        "ParentIndex": { "value": null, "type": "INT" },
        "ContainerClass": { "value": "", "type": "CLASS" },
        "Position": "absolute",
        "Width": { "value": "200px", "type": "LEN" },
        "Height": { "value": "200px", "type": "LEN" },
        "Top": { "value": "", "type": "LEN" },
        "Left": { "value": "", "type": "LEN" },
        "Right": { "value": "", "type": "LEN" },
        "Bottom": { "value": "", "type": "LEN" },
        "Border": { "value": "5px dashed #ccc", "type": "BORDER" },
        "OverBorder": { "value": "7px dashed silver", "type": "BORDER" },
        "FontSize": "2em",
        "FontColor": "silver",
        "Text": '<br />Drag files here to upload',
        "TextAlign": "center",
        "AllowedFileTypes":"jpg,png,mp3,mp4",
        "ServerScript": "/filehandeler.php",
        "OnComplete": null
    };

    this.Options = SI.Tools.Object.SetDefaults(options, this.Defaults);
    
    let self = this;
    this.Container = Ele('div', {
        id:this.Id,
        innerHTML: this.Options.Text,
        style:
        {
            "position": this.Options.Position,
            "left": this.Options.Left,
            "right": this.Options.Right,
            "top": this.Options.Top,
            "bottom": this.Options.Bottom,
            "width": this.Options.Width,
            "height": this.Options.Height,
            "fontSize": this.Options.FontSize,
            "color": this.Options.FontColor,
            "textAlign": this.Options.TextAlign,
            "border": this.Options.Border,
            "userSelect": "none"
        },
        ondragover: function (e) {

            return false;
        },
        ondragend: function (e) {
            return false;
        },
        ondragenter: function (e) {
            e.preventDefault();
            e.stopPropagation();
            this.style.border = self.Options.OverBorder;
        },
        ondragleave: function (e) {
            e.preventDefault();
            e.stopPropagation();
            this.style.border = self.Options.Border;
        },
        ondrop: function (e) {
            debugger;
            e.preventDefault();
            if(e.dataTransfer.files>0){
                self.UploadFiles(e.dataTransfer.files);
            }else{
                this.style.border = self.Options.Border;
            }
        }
    });

    this.ProgressBar = Ele('progress', {
        id:this.Id+'_progressbar',
        style: {
            "width": '70%',
            "height": '16px',
            "left": '15%',
            "radius": '3px',
            "position": "relative",
            "display": 'none'
        },
        appendTo: this.Container
    });

    this.UploadFiles = function (files) {
        //create the form object
        var formData = new FormData();
        let fileData = {};
        //change the progress bar to visible
        self.ProgressBar.style.display = 'block';

        for (let i = 0; i < files.length; i++) {
            //for each dropped file add them to the FormData object

            let file = files[i];
            formData.append('files[]', file);
            fileData.file = files[i];

            self.PreviewFile(files[i]);
        }

        var xhr = new XMLHttpRequest();
        xhr.open('POST', self.Options.ServerScript);
        xhr.onload = function () {
            self.ProgressBar.value = self.ProgressBar.innerHTML = 100;
        };
        xhr.onreadystatechange = function () {
            if (xhr.readyState === 4 && xhr.status === 200) {
                try {
                    if (xhr.responseText !== null && xhr.responseText.length > 0) {
                        if (self.Options.OnComplete) {
                            self.Options.OnComplete(files, xhr.responseText);
                        }
                    }
                } catch (ex) {
                    SI.Tools.Warn(xhr.responseText);
                    SI.Tools.Warn(ex);
                }
            }
        };
        if (self.Tests.progress) {
            xhr.upload.onprogress = function (event) {
                if (event.lengthComputable) {
                   
                    var complete = event.loaded / event.total * 100 | 0;
                    self.ProgressBar.value = self.ProgressBar.innerHTML = complete;
                    setTimeout(function () {
                        SI.Tools.Style.FadeOut(self.Id+"_preview", 1000);
                        let interval = setInterval(function () {
                            var preview = document.getElementById(self.Id+"_preview");
                            if(preview){
                                if (preview.style.display === 'none') {
                                    preview.parentElement.removeChild(preview);
                                    self.ProgressBar.value = 0;
                                    self.ProgressBar.style.display = 'none';
                                    clearInterval(interval);
                                }
                            }else{
                                self.ProgressBar.value = 0;
                                self.ProgressBar.style.display = 'none';
                                clearInterval(interval);
                            }
                        }, 500);
                    }, 1000);

                }
            };
        }
        xhr.send(formData);
    };

    this.Tests = {
        filereader: typeof FileReader !== 'undefined',
        formdata: !!window.FormData,
        progress: "upload" in new XMLHttpRequest
    };

    this.PreviewFile = function (file) {

        var reader = new FileReader();
        reader.onload = function (event) {

            let type = file.type.split('/')[0];
            let obj = null;

            switch (type) {
                case "image":
                    obj = new Image();
                    obj.src = event.target.result;
                    break;
                case "audio":
                    obj = new Audio();
                    obj.src = event.target.result;
                    break;
                case "video":
                    obj = Ele('video', {
                        style: {
                            verticalAlign: 'middle',
                        }

                    });
                    Ele('source', {
                        src: event.target.result,
                        appendTo: obj,
                    });
                    obj.currentTime += 5;
                    break;
                case "text": 
                    break;
                default: 
                    break;

            }

            if (obj === null) {
                obj = new Image();
                obj.src = 'editor/media/images/nopreviewavailable.jpg';
            }
            
            obj.id = this.Id+"_preview";
            obj.width = 250; // a fake resize
            obj.style.position = "absolute";
            obj.style.top = '-28px';
            obj.style.left = '-26px';
            self.Container.appendChild(obj);
        };
        reader.readAsDataURL(file);

    }

    if (this.Options.Parent) {
        this.Options.Parent.appendChild(this.Container);
    }

    SI.Widgets.Uploader[this.Id] = this;

    return this;
};
