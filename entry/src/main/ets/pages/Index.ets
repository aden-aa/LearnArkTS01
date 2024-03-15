import router from '@ohos.router';

@Entry
@Component
struct Index {
@State
data:string=''
  onPageShow() {
  let record  = router.getParams()
    if (record) {
      this.data=record['backData']
    }
  }
  build() {
    Row() {
      Column() {
        Text('第一页')
          .fontSize(50)
          .fontWeight(FontWeight.Bold)
        Blank(50)
        Text(this.data)
          .margin({bottom:30})
          .fontColor(Color.Gray)
          .fontSize(20)
          .opacity(0.5)
        Button('跳转到第二页')
          .height(60)
          .width(300)
          .backgroundColor(Color.Blue)
          .onClick(()=>{
            //页面跳转
            router.pushUrl({
              url:'pages/SecondPage',
              params:{
                data1:'第一页要传给第二页的数据'
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