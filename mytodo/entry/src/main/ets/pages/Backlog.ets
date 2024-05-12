@Observed
class Backlog {
  title: string
  done: boolean

  constructor(title: string, done: boolean) {
    this.title = title
    this.done = done
  }

  public toggle() {
    this.done = !this.done
  }
}

@Component
struct BacklogView {
  @ObjectLink model: Backlog

  build() {
    Row() {
      Toggle({ type: ToggleType.Checkbox, isOn: this.model.done })
        .onClick(() => {
          this.model.toggle()
        })
      Text(this.model.title)
        .fontWeight(FontWeight.Bold)
        .fontStyle(this.model.done ? FontStyle.Italic : FontStyle.Normal)

        .width('100%')
    }
    .padding(6)
    .height(60)
  }
}


export { BacklogView, Backlog }

@Preview
@Component
struct BacklogViewPreview {
  build() {
    BacklogView({ model: new Backlog("Helloworld", false) })
  }
}