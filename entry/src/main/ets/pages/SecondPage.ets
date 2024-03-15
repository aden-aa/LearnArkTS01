import router from '@ohos.router';

@Entry
@Component
struct Index {
  @State
  data:string=(router.getParams() as Record<string,string>)['data1']
  build() {
    Row() {
      Column() {
        Text('第二页')
          .fontSize(50)
          .fontWeight(FontWeight.Bold)
        Blank(50)
        Text(this.data)
          .margin({bottom:30})
          .fontColor(Color.Gray)
          .fontSize(20)
          .opacity(0.5)
        Button('返回到第一页')
          .height(59)
          .width(300)
          .backgroundColor(Color.Blue)
          .onClick(()=>{
            //页面跳转
            router.showAlertBeforeBackPage({message:'确定要返回吗？'})
            router.back({
              url:'pages/Index',
              params:{
                backData:'第二页给第一页的数据'
              }
            })
          })
      }
      .width('100%')
      .height(140)
    }
    .height('100%')
    .backgroundColor('#F1F3F5')

  }
}