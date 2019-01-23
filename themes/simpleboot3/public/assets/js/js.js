window.onload=function(){
    function my$(id) {
        return document.getElementById(id);
    }
    //项目展示
    (function () {
        //判断页面是否有这个元素
        if( !my$("projectUl") ){
            return;
        }
        var lis = my$("projectUl").getElementsByTagName('li');
        var imgs = my$("projectImg").getElementsByTagName('img');
        var i=0;
        for(i=0;i<lis.length;i++){
            lis[i].index=i;
            lis[i].onmouseenter=function(){
                for(i=0;i<lis.length;i++){
                    lis[i].className='';
                    imgs[i].className='';
                }
                lis[this.index].className='on';
                imgs[this.index].className='on';
            }
        }
    })();
    //新闻
    (function () {
        //判断页面是否有这个元素
        if( !my$("news_box") ){
            return;
        }
        var boxwidth = my$("news_box").offsetWidth;
        var liS = my$("news_box_ul").getElementsByTagName("li");
        var lilength = my$("news_box_ul").getElementsByTagName("li").length;
        var liwidth = boxwidth / 3;
        var ulwidth = liwidth * lilength ;
        my$("news_box_ul").style.width= ulwidth + "px";
        for (var i=0;i<liS.length;i++){
            liS[i].style.width = liwidth+'px'
        }
        var i=0;
        my$("news_box_but_left").onclick=function () {
            i--;
            if(i<0){
                my$("news_box_ul").style.marginLeft=0;
                i = 0;
            }else {
                my$("news_box_ul").style.marginLeft= -i * liwidth  + 'px';
            }
        };
        my$("news_box_but_right").onclick=function () {
            i++;
            if(i<liS.length-2){
                my$("news_box_ul").style.marginLeft=-i *liwidth + 'px';
            }else {
                i=liS.length-3;
            }
        }
    })();
    //荣誉
    (function () {
        //判断页面是否有这个元素
        if( !my$("h_ul") ){
            return;
        }

        var lias = my$("h_ul").getElementsByTagName("a");
        for (var i=0;i<lias.length;i++){
            lias[i].onclick=function () {
                my$("bigbox_img").src = this.href;
                my$("bigbox_h2").innerText = this.title;
                my$("bigbg").style.display="block";
                my$("bigbox").style.display="block";
                return false
            }
        }
        my$("bigbox_div").onclick=function () {
            my$("bigbg").style.display="none";
            my$("bigbox").style.display="none";
        }
    })();
    //合作伙伴
    (function () {
        //判断页面是否有这个元素
        if( !my$("C_ul") ){
            return;
        }
        var lis = my$("C_ul").getElementsByTagName("li");
        for (var i=0;i<lis.length;i++){
            if(i%2==0){
                lis[i].className="on"
            }
        }
    })();
    //联系我们
    (function () {
        //判断页面是否有这个元素
        if( !my$("C_ul_lx") ){
            return;
        }
        var lis = my$("C_ul_lx").getElementsByTagName("li");
        for (var i=0;i<lis.length;i++){
            lis[lis.length -1].className="on"
        }
    })();
    //人才招聘
    (function () {
        //判断页面是否有这个元素
        if( !my$("join_ul") ){
            return;
        }
        var lis = my$("join_ul").getElementsByTagName("li");
        var i=0;
        for(i=0;i<lis.length;i++){
            lis[i].index=i;
            lis[i].onclick=function(){
                for(i=0;i<lis.length;i++){
                    lis[i].className='';
                }
                lis[this.index].className='on';
            }
        }
    })();
    //项目展示
    (function () {
        //判断页面是否有这个元素
        if( !my$("project_ul") ){
            return;
        }
        var lis = my$("project_ul").getElementsByTagName("li");
        for (var i=0;i<lis.length;i++){
            if(i%2!=0){
                lis[i].className="on"
            }
        }
    })();

};
