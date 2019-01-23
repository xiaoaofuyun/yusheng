<?php
// +----------------------------------------------------------------------
// | ThinkCMF [ WE CAN DO IT MORE SIMPLE ]
// +----------------------------------------------------------------------
// | Copyright (c) 2013-2018 http://www.thinkcmf.com All rights reserved.
// +----------------------------------------------------------------------
// | Licensed ( http://www.apache.org/licenses/LICENSE-2.0 )
// +----------------------------------------------------------------------
// | Author: 老猫 <thinkcmf@126.com>
// +----------------------------------------------------------------------
namespace app\portal\controller;
use cmf\controller\HomeBaseController;
use think\Db;
use \think\Request;
class IndexController extends HomeBaseController
{
    public function index()
    {
        $result=$this->apic('3');

        
        
        $content=Db::name("portal_post")->where('id','1')->find();
        $this->assign('tp',$content);
        $this->assign('tname',$result['name']);

        $result2=$this->apic('2');
        $nums=Db::name("portal_category_post")->where(["category_id"=>2,"status"=>'1'])->field('id')->select();
        $arr=[];
        foreach ($nums as $key => $value) {
          foreach ($value as $k=> $v) {
             $arr[$key]=$v;
          }
       }
         $project=Db::name("portal_post")->where("recommended",'1')->where('post_status','1')->where("id",'in',$arr)->order('update_time desc')->select();
        $this->assign("result2",$result2);
         $this->assign("project",$project);
        
       $cnews=$this->apirec('13');
        $result3=$this->apic('1');
       $this->assign("cnews",$cnews);
       $this->assign("result3",$result3);

       $this->assign("banner_id",'1');
        return $this->fetch(':index');
    }
    public function about()
    {   
         $this->assign("banner_id",'6');
          $this->assign("current_id",'19');
          $content=Db::name("portal_post")->where('id','1')->find();
        $this->assign('tp',$content);
        $result5=$this->apic('5');
         $result6=$this->apic('6');
          $result7=$this->apic('7');
           $result8=$this->apic('8');
            $this->assign("result5",$result5);
             $this->assign("result6",$result6);
              $this->assign("result7",$result7);
               $this->assign("result8",$result8);
        return $this->fetch(':about');
    }

    public function structure()
    {

         $this->assign("banner_id",'6');
          $this->assign("current_id",'20');
          $content=Db::name("portal_post")->where('id','26')->find();
        $this->assign('tp',$content);
        $result5=$this->apic('5');
         $result6=$this->apic('6');
          $result7=$this->apic('7');
           $result8=$this->apic('8');
            $this->assign("result5",$result5);
             $this->assign("result6",$result6);
              $this->assign("result7",$result7);
               $this->assign("result8",$result8);
        return $this->fetch(':structure');
       
    }
    public function project()
    {
         $this->assign("banner_id",'2');
          $this->assign("current_id",'2');


            $projects=Db::name("portal_category")->where('parent_id','2')->where('status','1')->select();
          $this->assign('projects',$projects);
        return $this->fetch(':project');
    }
    public function project_list(Request $request)
    {
         $this->assign("banner_id",'2');
          
         $c_id=$request->param('id');
         $this->assign("current_id",$c_id);
         $result=$this->apic($c_id);
         $this->assign('result',$result);
         
        if(isset($_GET['page']))
         {
         $pg=$_GET['page'];
         $this->assign('pg',$pg);
         }
         else
         {
            $this->assign('pg','1');
         }
          $this->assign('c_id',$c_id);
          $news_content=$this->apicdcpg2($c_id,$c_id);

            $this->assign("news_content",$news_content);
            $this->assign('page',$news_content->render());
        return $this->fetch(':project_list');
    }
     public function projectdetails(Request $request)
    {
          $id=$request->param('cid');
          $aid=$request->param('id');
          $this->assign('aid',$aid);
          $details=Db::name('portal_post')->where('id',$id)->select();
          //var_dump($details);
        
             $content=htmlspecialchars_decode($details['0']['post_content']);
             $content=str_replace('portal/', './upload/portal/', $content);
             $this->assign('content',$content);
            $newstr=str_replace('portal\/', '.\/upload\/portal\/', $details['0']['more']);
            $imgs=json_decode($newstr,true);
            if(isset($imgs['photos']))
            {
                $this->assign('imgs',$imgs['photos']);
            }
            else{
                   $this->assign('imgs',"");
            }

                    //var_dump($content);
                 //     preg_match('/<img.+src=\"?(.+\.(jpg|gif|bmp|bnp|png))\"?.+>/i', stripcslashes($content), $match); 
                 // if(isset($match['0']))
                 //    {
                 //        $imgs=$match['0'];
                 //        $this->assign('imgs',$imgs);
                 //    }
                  
                   //preg_match('/<img.+src=\"?(.+\.(jpg|gif|bmp|bnp|png))\"?.+>/i', $imgs, $matc2); 
                   
                  // preg_match_all('/<img.*\/>/i', $imgs, $out);
                   
                  // $newstr = preg_replace("/<img.*>/", "", $content);
                  //  if(isset($newstr))
                  //  {
                  //   $this->assign('newstr',$newstr); 
                  //  }
                    
                   



          $this->assign('details',$details);
          $nums=$this->apiudc($aid);
         //var_dump($nums); die;
         
          $newnums=array_flip($nums);
          //var_dump($newnums);
          $wzhi=$newnums[$id];
          //var_dump($wzhi);
         
          $ns=count($nums);
          if($wzhi=='0'&&$wzhi!=$ns-1||$wzhi=='0')
          {
            $pre='没有了';
            $this->assign('pre',$pre);
             $this->assign('pre_id',$id);
          }
          else
          {
             $preid=$wzhi-1;
             $dpre=Db::name('portal_post')->where('id',$nums[$preid])->select();
             $pre=$dpre[0]['post_title'];
             $pre_id=$nums[$preid];
             $this->assign('pre_id',$pre_id);
              $this->assign('pre',$pre);
          }
          if($wzhi==$ns-1&&$wzhi>=0)
          {
            $last='没有了';
             $this->assign('last',$last);
              $this->assign('last_id',$id);

          }
          else
          {
            $lasid=$wzhi+1;
            $dlast=Db::name('portal_post')->where('id',$nums[$lasid])->select();
            $last=$dlast[0]['post_title'];
               $last_id=$nums[$lasid];
               $this->assign('last_id',$last_id);
             $this->assign('last',$last);
          }

        return $this->fetch(':projectdetails');
    }

       public function projectdd(Request $request){
                   $id=$request->param('cid');
                  $dd=Db::name('portal_category_post')->where('id',$id)->field('category_id')->find();
                 $nu=$dd['category_id'];
                 return $this->redirect("/projectdetails?cid=$id&id=$nu");
                   
     }


    public function news()
    {
       $this->assign("banner_id",'3');
          $this->assign("current_id",'1');
         $cnews=Db::name("portal_category")->where('parent_id','1')->where('status','1')->select();
         //dump($news);
          $this->assign('cnews',$cnews);

        return $this->fetch(':news');
    }
    public function cooperation()
    {
        $this->assign("banner_id",'4');
          $this->assign("current_id",'16');
        $coopername=$this->apic('4');
        $this->assign('coopername',$coopername);
        $coopcontent=$this->apicdc('16');
        $this->assign("coopcontent",$coopcontent);

 
        return $this->fetch(':cooperation');
    }

    public function join()
    {
         $this->assign("banner_id",'4');
          $this->assign("current_id",'18');
          $content=$this->apicdc('18');
          $this->assign('content',$content);
       return  $this->fetch(':join');
    }
    public function contact()
    {
         $this->assign("banner_id",'5');
          $this->assign("current_id",'17');
        $contact=Db::name('portal_category')->where('parent_id','17')->select();
        $this->assign('contact',$contact);
        return $this->fetch(':contact');
    }



    public function about_honor()
    {
        $this->assign("banner_id",'3');
          $this->assign("current_id",'21');
          $about_honor=$this->apic('21');
        $this->assign('about_honor',$about_honor);
        $honorcontent=$this->apicdc('21');
        $this->assign("honorcontent",$honorcontent);
        return $this->fetch(':about_honor');
    }
    public function news_list(Request $request)
    {
        $c_id=$request->param('id');
         
        if(isset($_GET['page']))
         {
         $pg=$_GET['page'];
         $this->assign('pg',$pg);
         }
         else
         {
            $this->assign('pg','1');
         }
        $this->assign('c_id',$c_id);
        $this->assign("banner_id",'3');
          $this->assign("current_id",$c_id);

            $news_content=$this->apicdcpg($c_id,$c_id);

            $this->assign("news_content",$news_content);
            $this->assign('page',$news_content->render());

           return $this->fetch(':news_list');
    }
    public function newsdetails(Request $request)
    {
        $this->assign("banner_id",'3');
          $this->assign("current_id",'1');
          $id=$request->param('cid');
           $aid=$request->param('id');
           $this->assign('aid',$aid);
          $details=Db::name('portal_post')->where('id',$id)->select();
          //var_dump($details);
          $this->assign('details',$details);
          $nums=$this->apiudc($aid);
          //var_dump($id);
          //var_dump($nums);
          $newnums=array_flip($nums);
          $wzhi=$newnums[$id];
          //var_dump($wzhi);
         
          $ns=count($nums);
          //var_dump($ns);
          if($wzhi=='0'&&$wzhi!=$ns-1||$wzhi=='0')
          {
            $pre='没有了';
            $this->assign('pre',$pre);
             $this->assign('pre_id',$id);
          }
          else
          {  //var_dump($wzhi);
             $preid=$wzhi-1;
             //var_dump($preid);
             //die();
             $dpre=Db::name('portal_post')->where('id',$nums[$preid])->select();
             $pre=$dpre[0]['post_title'];
             $pre_id=$nums[$preid];
             $this->assign('pre_id',$pre_id);
              $this->assign('pre',$pre);
          }
          if($wzhi==$ns-1&&$wzhi>=0)
          {
            $last='没有了';
             $this->assign('last',$last);
              $this->assign('last_id',$id);

          }
          else
          {
            $lasid=$wzhi+1;
            $dlast=Db::name('portal_post')->where('id',$nums[$lasid])->select();
            $last=$dlast[0]['post_title'];
               $last_id=$nums[$lasid];
               $this->assign('last_id',$last_id);
             $this->assign('last',$last);
          }
         // var_dump($nums);

        return $this->fetch(':newsdetails');
    }
    public function newsdd(Request $request){
                   $id=$request->param('cid');
                  $dd=Db::name('portal_category_post')->where('id',$id)->field('category_id')->find();
                 $nu=$dd['category_id'];
                 return $this->redirect("/newsdetails?cid=$id&id=$nu");
                   
     }
    /*public function apicate($id='3',$status='1')
    {

        $catename=Db::name("portal_category")->where(['id'=>$id,'status'=>$status])->find();
        return $catename;

    }*/
    //分类
    public function apic($id)
    {
         $row=Db::name("portal_category")->where(['id'=>$id,'status'=>'1'])->find();
        return ($row);
    }
    //大分类下的小分类
    public function apicd($pid)
    {
        $rows=Db::name("portal_category")->where(['parent_id'=>$pid,'status'=>'1'])->select();
        return $rows;
    }

   //分类下面文章的id数组
    public function apiudc($cid)
    {
        $arr=[];
       $rows = Db::name('portal_category_post')->
                   where(["category_id"=>$cid,"status"=>'1'])->field('id')->order('id', 'desc')->select();
                   
       foreach ($rows as $key => $value) {
          foreach ($value as $k=> $v) {
             $arr[$key]=$v;
          }
       }
       return $arr;
    }
    //大分类下小分类详情的内容
    public function apicdc($cid)
    {
         
       $arr=[];
       $rows = Db::name('portal_category_post')->
                   where(["category_id"=>$cid,"status"=>'1'])->field('id')->select();
                   
       foreach ($rows as $key => $value) {
          foreach ($value as $k=> $v) {
             $arr[$key]=$v;
          }
       }
       
       $result= Db::name('portal_post')->where('post_status','1')
        ->where('id','IN',$arr)->select();

        return  $result;
    }
   //分页1
    public function apicdcpg($cid,$id)
    {
         
       $arr=[];
       $rows = Db::name('portal_category_post')->
                   where(["category_id"=>$cid,"status"=>'1'])->field('id')->select();
                   
       foreach ($rows as $key => $value) {
          foreach ($value as $k=> $v) {
             $arr[$key]=$v;
          }
       }
       
       $result= Db::name('portal_post')->where('post_status','1')
        ->where('id','IN',$arr)->order('id', 'desc')->paginate(4,false,['query' => ['id'=>$id]]);

        return  $result;
    }
    //分页2
    public function apicdcpg2($cid,$id)
    {
         
       $arr=[];
       $rows = Db::name('portal_category_post')->
                   where(["category_id"=>$cid,"status"=>'1'])->field('id')->select();
                   
       foreach ($rows as $key => $value) {
          foreach ($value as $k=> $v) {
             $arr[$key]=$v;
          }
       }
       
       $result= Db::name('portal_post')->where('post_status','1')
        ->where('id','IN',$arr)->order('id', 'desc')->paginate(6,false,['query' => ['id'=>$id]]);

        return  $result;
    }
  //推荐
    public function apirec($cid)
    {
         $nums=Db::name("portal_category_post")->where(["category_id"=>$cid,"status"=>'1'])->field('id')->select();
         
        $arr=[];
        foreach ($nums as $key => $value) {
          foreach ($value as $k=> $v) {
             $arr[$key]=$v;
          }
       }
         $project=Db::name("portal_post")->where("recommended",'1')
          ->where('post_status','1')
         ->where("id",'in',$arr)->order('update_time desc')->select();

         return $project;
    }
}
