import router from '@ohos.router';

@Entry
@Component
struct Index {
  @State userName: string = ''
  @State password: string = ''

  build() {
      Column() {
        Column({space: 10}) {
          Image($rawfile('homony-app2-logo.jpg'))
            .objectFit(ImageFit.ScaleDown)
            .width(420 / 4)
            .height(596 / 4)
          Text('登录界面')
            .fontSize(25)
            .fontWeight(FontWeight.Bold)
          Text('登录帐户以使用更多功能')
            .fontSize(20)
            .fontColor(Color.Gray)
        }

        Column({space: 10}) {
          TextInput({ text: this.userName, placeholder: '帐号' })
            .onChange((v: string) => {
              this.userName = v
            })
          TextInput({ text: this.password, placeholder: '密码' })
            .type(InputType.Password)
            .onChange((v: string) => {
              this.password = v
            })

          Row() {
            Text('短信验证码登录')
              .fontColor(Color.Blue)
            Text('忘记密码')
              .fontColor(Color.Blue)
          }
          .width('100%')
          .justifyContent(FlexAlign.SpaceBetween)
        }

        Column({space: 10}) {
          Button('登录')
            .width('100%')
            .onClick(() => {
              if (this.password.trim() != '' && this.userName.trim() != '') {
                router.pushUrl({
                  url: 'pages/Target'
                }, router.RouterMode.Single)
              }
            })

          Text('注册帐号')
            .fontColor(Color.Blue)
        }

        Column({space: 10}) {
          Text('其它方式登录')
            .fontColor(Color.Gray)

          Row() {
            Button('方式一')
              .type(ButtonType.Circle)
              .fontColor(Color.Grey)
              .backgroundColor('#eee')
              .borderStyle(BorderStyle.Solid)
              .borderWidth(1)
              .borderColor(Color.Grey)
              .width(70)
              .height(70)
            Button('方式二')
              .type(ButtonType.Circle)
              .fontColor(Color.Grey)
              .backgroundColor('#eee')
              .borderStyle(BorderStyle.Solid)
              .borderWidth(1)
              .borderColor(Color.Grey)
              .width(70)
              .height(70)
            Button('方式三')
              .type(ButtonType.Circle)
              .fontColor(Color.Grey)
              .backgroundColor('#eee')
              .borderStyle(BorderStyle.Solid)
              .borderWidth(1)
              .borderColor(Color.Grey)
              .width(70)
              .height(70)
          }
          .width('100%')
          .justifyContent(FlexAlign.SpaceAround)
        }
      }
      .justifyContent(FlexAlign.SpaceAround)
      .padding(10)
      .width('100%')
      .height('100%')
      .backgroundColor('#eee')
  }
}