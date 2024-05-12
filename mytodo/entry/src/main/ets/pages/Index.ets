import { Backlog, BacklogView } from './Backlog'


@Entry
@Component
struct Index {
  @State backlogs: Array<Backlog> = [
    new Backlog("读书", false),
    new Backlog("修5个bug", false),
    new Backlog("写代码", true),
    new Backlog("玩游戏", false)
  ];
  @State newBacklogTitle: string = ""

  build() {
    Column({ space: 2 }) {
      Text("待办")
        .fontSize(30)
        .width('100%')
        .padding(12)
      ForEach(this.backlogs, (item: Backlog) => {
        BacklogView({ model: item })
      }, (item: Backlog, index: number) => item.title)

      Row({ space: 5 }) {
        TextInput({ placeholder: 'enter new backlog' })
          .onChange((value: string) => {
            this.newBacklogTitle = value
          })
          .width('80%')

        Button('添加').width(150)
          .onClick(() => {
            if (this.newBacklogTitle.trim() != '') {
              this.backlogs.push(new Backlog(this.newBacklogTitle, false))
            }

            this.newBacklogTitle = ''
          })
          .width('20%')
      }
      .padding(10)
    }
    .height('100%')
    .width('100%')
    .backgroundColor("#eee")
  }
}

@Preview
@Component
struct HomePreview {
  build() {
    Index()
  }
}