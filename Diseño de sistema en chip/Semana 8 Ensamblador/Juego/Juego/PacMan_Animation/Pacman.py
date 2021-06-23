import pygame
from pygame.locals import*
from time import sleep
#from random import randrange
# Inicialización, caracteríaticas de resolución del monitos
pygame.init()
width = pygame.display.Info().current_w
height = pygame.display.Info().current_h
# Crear la ventana
screen = pygame.display.set_mode((width, height))
# Mostrar la imagen que contendra las diferencias
difference = pygame.image.load('Frame1.png')
# Maximizar la imagen en la pantalla
difference = pygame.transform.scale(difference, (width, height))
screen.blit(difference, (0,0))
# Image sorpresa
pacman1 = pygame.image.load('Frame2.png')
pacman1 = pygame.transform.scale(pacman1, (width, height))
screen.blit(difference, (0,0))

pacman2 = pygame.image.load('Frame3.png')
pacman2 = pygame.transform.scale(pacman2, (width, height))
screen.blit(difference, (0,0))

pacman3 = pygame.image.load('Frame4.png')
pacman3 = pygame.transform.scale(pacman3, (width, height))
screen.blit(difference, (0,0))
# Cargar el sonido
scream = pygame.mixer.Sound('pacman_beginning.wav')
# Tiempo aleatorio [5]
#sleep(5)
# Activar el sonido
scream.play()
# Actualizar la imagen (0,0)
for i in range (5):

    pygame.display.update()
    screen.blit(difference, (0,0))
    sleep(0.2)
    pygame.display.update()
    screen.blit(pacman1, (0,0))
    sleep(0.2)
    pygame.display.update()
    screen.blit(pacman2, (0,0))
    sleep(0.2)
    pygame.display.update()
    screen.blit(pacman3, (0,0))
    sleep(0.2)
    pygame.display.update()
    
# Detener el sonido
#scream.stop()

pygame.quit()