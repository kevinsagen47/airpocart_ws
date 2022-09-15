from ui import *


if __name__ == '__main__':
    app = QApplication(sys.argv)
    screen = app.primaryScreen()
    w = MyWidget()
    w.showFullScreen()
    #w.show()
    
    sys.exit(app.exec_())
