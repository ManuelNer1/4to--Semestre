from tkinter import *
from tkinter import filedialog
from pygame import mixer

class Music:
  def __init__(self, window):
    window.geometry("250x250")
    window.title("Sistema de infoentretenimiento")
    window.config(bg="blue", relief="ridge", bd="25")

    abr = Button(window, text="Open", width=10, bg="red", relief="groove", bd="4", command=self.abrir)
    abr.place(x=60, y=20)
    repro = Button(window, text="Play", width=10, bg="red", relief="groove", bd="4", command=self.rep)
    repro.place(x=60, y=60)
    paus = Button(window, text="Pause", width=10, bg="red", relief="groove", bd="4", command=self.pausa)
    paus.place(x=60, y=100)
    st = Button(window, text="Stop", width=10, bg="red", relief="groove", bd="4", command=self.det)
    st.place(x=60, y=140)

    self.op_music=False
    self.play_music=False

  def abrir(self):
    self.op_music=filedialog.askopenfilename()

  def rep(self):
    if self.op_music:
      mixer.init()
      mixer.music.load(self.op_music)
      mixer.music.play()
    
  def pausa(self):
    if self.play_music:
      mixer.music.pause()
      self.play_music=False
    else:
      mixer.music.unpause()
      self.play_music=True

  def det(self):
    mixer.music.stop() 

screen = Tk()
Music(screen)
screen.mainloop()
