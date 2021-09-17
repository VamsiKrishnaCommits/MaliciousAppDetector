

import 'package:android_intent/android_intent.dart';
import 'package:device_apps/device_apps.dart';
import 'package:flutter/material.dart';
import 'package:intent/intent.dart' as android_intent;
import 'package:intent/action.dart' as android_action;
import 'package:store_redirect/store_redirect.dart';

import 'splash.dart';


void main() {
  runApp(splash());
}

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> with WidgetsBindingObserver  {
  int count=0;
  List<dynamic> lis;
  String wait="wait";
  Map<dynamic,dynamic> cats=Map();
  List<appslist>Appslist=List();
  @override
  void initState() {
    // TODO: implement initState
    WidgetsBinding.instance.addObserver(this);
    super.initState();
    cats["videoplayer"]=detail("com.mxtech.videoplayer.ad","mxplayer");
    cats["videoeditor"]=detail("com.adobe.premiererush.videoeditor","Adobe Premier");
    cats["shortvids"]=detail("com.mobilemotion.dubsmash","Dubsmash");
    cats["sharing"]=detail("com.google.android.apps.nbu.files","Google Files");
    cats["browser"]=detail("com.android.chrome","Google Chrome");
    cats["vpn"]=detail("com.psiphon3.subscription","Psiphon");
    cats["scores"]=detail("com.cricbuzz.android","Cricbuzz");
    cats["shootinggames"]=detail("com.dts.freefireth","FreeFire");
    cats["photoeditor"]=detail("com.niksoftware.snapseed","Snapspeed");
    cats["shopping"]=detail("com.flipkart.android","Flipkart");
    cats["videodownloader"]=detail("nova.all.video.downloader","VideoDownloaderpro");
    cats["applock"]=detail("com.sp.protector.free","AppLock-Fingerprint");
    cats["Dictionary"]=detail("com.mobisystems.msdict.embedded.wireless.oxford.dictionaryofenglish","Oxford Dictionary");
    cats["games"]=detail("com.igg.clash_of_lords","clash of lords");
    cats["social"]=detail("com.yy.hiyo","Hago");
    cats["office"]=detail("com.mobisystems.office","OfficeSuite");
    cats["dating"]=detail("com.tinder","Tinder");
    cats["books"]=detail("com.amazon.kindle","Kindle");
    cats["scanner"]=detail("com.adobe.scan.android","AdobeScanner");
    cats["news"]=detail("com.nis.app","Inshorts");
    cats["socialmedia"]=detail("com.facebook.katana","FaceBook");
    cats["credit"]=detail("com.kreditbee.android","KreditBee");
    cats["space"]=detail("com.cloneapp.parallelspace.dualspace","CloneApp");
    cats["payment"]=detail("com.phonepe.app","PhonePe");
    cats["remote"]=detail("com.remote.control.tv.universal.pro","RemoteController");
    Appslist.add(appslist("com.mi.globalbrowser", "browser"));
    Appslist.add(appslist("com.miui.videoplayer", "videoplayer"));
    Appslist.add(appslist("com.mi.android.globalFileexplorer", "sharing"));
    Appslist.add(appslist("com.xiaomi.midrop", "sharing"));
    Appslist.add(appslist("com.duokan.phone.remotecontroller", "remote"));
    Appslist.add(appslist("com.micredit.in.gp", "credit"));
    Appslist.add(appslist("com.mipay.in.wallet", "payment"));
    Appslist.add(appslist("com.lenovo.anyshare.gps", "sharing"));
    Appslist.add(appslist("com.lenovo.anyshare.gps", "sharing"));
    Appslist.add(appslist("com.lbe.parallel.intl", "space"));
    Appslist.add(appslist("com.zhiliaoapp.musically","shortvids"));
    Appslist.add(appslist("com.zhiliaoapp.musically.go","shortvids"));
    Appslist.add(appslist("app.buzz.share","socialmedia"));
    Appslist.add(appslist("app.buzz.share.lite","socailmedia"));
    Appslist.add(appslist("com.UCMobile.intl","browser"));
    Appslist.add(appslist("com.uc.browser.en","browser"));
    Appslist.add(appslist("com.ucturbo","vpn"));
    Appslist.add(appslist("com.CricChat.intl","scores"));
    Appslist.add(appslist("com.tencent.ig","shootinggames"));
    Appslist.add(appslist("com.tencent.iglite","shootinggames"));
    Appslist.add(appslist("com.xprodev.cutcam","photoeditor"));
    Appslist.add(appslist("cn.xender","sharing"));
    Appslist.add(appslist("com.uc.vmate","shortvids"));
    Appslist.add(appslist("com.commsource.beautyplus","photoeditor"));
    Appslist.add(appslist("club.fromfactory","shopping"));
    Appslist.add(appslist("all.video.downloader.allvideodownloader","videodownloader"));
    Appslist.add(appslist("com.ss.android.ugc.boom","shortvideo"));
    Appslist.add(appslist("com.ss.android.ugc.boom.livewallpaper","shortvideo"));
    Appslist.add(appslist("com.ss.android.ugc.boomlite","shortvideo"));
    Appslist.add(appslist("com.domobile.applockwatcher","applock"));
    Appslist.add(appslist("com.uc.vmlite","shortvids"));
    Appslist.add(appslist("com.youdao.hindict","dictionary"));
    Appslist.add(appslist("com.videochat.livu","shortvids"));
    Appslist.add(appslist("com.nebula.mamu","shortvids"));
    Appslist.add(appslist("com.bingo.livetalk","shortvids"));
    Appslist.add(appslist("com.asiainno.uplive","shortvids"));
    Appslist.add(appslist("sg.bigo.live","shortvids"));
    Appslist.add(appslist("sg.bigo.live.lite","shortvids"));
    Appslist.add(appslist("com.funplus.kingofavalon","games"));
    Appslist.add(appslist("com.diandian.gog","games"));
    Appslist.add(appslist("com.gamemaker5.idlemafia","games"));
    Appslist.add(appslist("com.live.videochat.india","shortvids"));
    Appslist.add(appslist("com.zakzak.live.chat","shortvids"));
    Appslist.add(appslist("com.zakzak.lite.chat","shortvids"));
    Appslist.add(appslist("com.alibaba.aliexpresshd","shopping"));
    Appslist.add(appslist("com.dengpai.aliprice","shopping"));
    Appslist.add(appslist("com.aliexplorerapp.aliexplorer","shopping"));
    Appslist.add(appslist("com.alibaba.intl.android.apps.poseidon","shopping"));
    Appslist.add(appslist("com.alibaba.icbu.app.aliexpress.seller","shopping"));
    Appslist.add(appslist("vStudio.Android.Camera360","photoeditor"));
    Appslist.add(appslist("com.pinguo.camera360lite","photoeditor"));
    Appslist.add(appslist("cn.wps.moffice_eng","office"));
    Appslist.add(appslist("com.banggood.client","shopping"));
    Appslist.add(appslist("com.newsdog","news"));
    Appslist.add(appslist("com.dewmobile.kuaiya.play","sharing"));
    Appslist.add(appslist("video.like","shortvids"));
    Appslist.add(appslist("com.supercell.clashofclans","games"));
    Appslist.add(appslist("com.igg.castleclash","games"));
    Appslist.add(appslist("com.dc.hwsj","games"));
    Appslist.add(appslist("com.intsig.camscanner","scanner"));
    Appslist.add(appslist("com.nono.android","social"));
    Appslist.add(appslist("com.dating.android","dating"));
    Appslist.add(appslist("com.qidian.Int.reader","books"));
    Appslist.add(appslist("sg.bigo.hellotalk","social"));
    Appslist.add(appslist("com.gtarcade.lod","games"));
    Appslist.add(appslist("com.yottagames.mafiawar","games"));
    Appslist.add(appslist("com.longtech.lastwars.gp","games"));
    Appslist.add(appslist("com.lilithgame.sgame.gp.oss","games"));
    Appslist.add(appslist("free.vpn.unblock.proxy.turbovpn","vpn"));
    Appslist.add(appslist("com.cyberlink.powerdirector.DRA140225_01","videoediting"));
    Appslist.add(appslist("com.wondershare.filmorago","videoediting"));
    Appslist.add(appslist("videoeditor.videomaker.videoeditorforyoutube","videoediting"));
    Appslist.add(appslist("com.camerasideas.trimmer","videoediting"));
    Appslist.add(appslist("videoeditor.videomaker.videoeditorforyoutube","videoediting"));
  }
@override
  void didChangeAppLifecycleState(AppLifecycleState state) {
  if(state==AppLifecycleState.resumed) {
setState(() {
  wait="wait";
  getlist();

});  }
  }
  void dispose() {
    WidgetsBinding.instance.removeObserver(this);
    super.dispose();
  }

    @override
  Widget build(BuildContext context) {
print("changed");
    return MaterialApp(
      title: "Apps",
      home: Scaffold(
        body: Center(
          child:Stack(
    children:[
          Container(
          decoration: BoxDecoration(
          gradient: LinearGradient(
              begin: Alignment.topCenter,
              end: Alignment.bottomCenter,
              colors: [Colors.blue, Colors.white])),
      )
      ,
           wait == "wait" ? Container(
            child: Center(
              child:CircularProgressIndicator()
            ),
          ):Container(
            child:
            SingleChildScrollView(
                child:Column(
              mainAxisSize: MainAxisSize.max,
              children:<Widget> [


              Padding(
                padding: EdgeInsets.only(top:70.0),
                child:Container(
                  decoration:BoxDecoration(
                    border: Border.all(width: 2.0,color: Colors.white)
                  ),
                child:Padding(
                 padding: EdgeInsets.all(20.0),

                child:Text(
                  lis.length!=0?"You have got "+ lis.length.toString()+ " chinese apps": "Great,you have no removable chinese apps on your mobile!",style: TextStyle(
                  color: Colors.white,
                  fontSize: 20.0,
                  fontWeight: FontWeight.bold
                ),textAlign: TextAlign.center,)))),
               
               lis.length!=0? Padding(
                  padding: EdgeInsets.all(10.0),
                    child:Text("Tap to see suggested alternate app!")):Container()
                ,
      lis.length!=0?     ListView.builder(
               physics: NeverScrollableScrollPhysics(),

               shrinkWrap: true,
                  padding: const EdgeInsets.all(8),
                  itemCount: lis.length,
                  itemBuilder: (BuildContext context, int index) {
    return
      Card(

    child: ExpansionTile(
    leading: CircleAvatar(
    backgroundImage:MemoryImage( lis.elementAt(index).data.icon),
    ),
    title: Text(lis.elementAt(index).data.appName), children: <Widget>[
    Text("Suggested alternate app",
    style: TextStyle(
    fontWeight: FontWeight.bold,
    color: Colors.black
    ),),
    ListTile(
    title: Text(cats[lis.elementAt(index).cat].name,style: TextStyle(
    fontWeight: FontWeight.bold,
    color: Colors.black
    ),),
    trailing: RaisedButton(
      onPressed: (){
        StoreRedirect.redirect(androidAppId:cats[lis.elementAt(index).cat].pack);

      },
      color: Colors.green,
      child: Text("install",style: TextStyle(
        color:Colors.white
      ),),
    ),
    onTap: () {
    StoreRedirect.redirect(androidAppId:cats[lis.elementAt(index).cat].pack);
    }
    )
    ],
    ),
      );

    }
            ):
      Container(
        child:Center(
child: Image(image: AssetImage('assets/images/supporter.png')),
        )
      ),
              ])),


           )
    ,
    ]


    ),

    )));
  }

  Future<void> getlist() async {
    lis=List();
    int l=Appslist.length;
    for(int i=0;i<l;i++){
      bool a=  await DeviceApps.isAppInstalled(Appslist.elementAt(i).pack);
      if(a){
        var data=await DeviceApps.getApp(Appslist.elementAt(i).pack,true);
        lis.add(dyn(data,Appslist.elementAt(i).cat));
        print(Appslist.elementAt(i).pack);
      }
    }
    setState(() {
      wait="go";
    });
  }


}

class dyn{

  dynamic data;
  String cat;
  dyn(this.data,this.cat);
}
class appslist{
  String pack;
  String cat;
  appslist(this.pack,this.cat);

}
class ExpandableCardContainer extends StatefulWidget {
  final bool isExpanded;
  final Widget collapsedChild;
  final Widget expandedChild;

  const ExpandableCardContainer(
      {Key key, this.isExpanded, this.collapsedChild, this.expandedChild})
      : super(key: key);

  @override
  _ExpandableCardContainerState createState() =>
      _ExpandableCardContainerState();
}

class _ExpandableCardContainerState extends State<ExpandableCardContainer> {
  @override
  Widget build(BuildContext context) {
    return new AnimatedContainer(
      duration: new Duration(milliseconds: 200),
      curve: Curves.easeInOut,
      child: widget.isExpanded ? widget.expandedChild : widget.collapsedChild,
    );
  }
}
class detail{
  String pack;
  String name;
  detail(this.pack,this.name);
}
