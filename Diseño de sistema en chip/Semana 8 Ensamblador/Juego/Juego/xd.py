import pygame
from pygame.locals import*
from time import sleep
from random import randrange
# Inicialización, caracteríaticas de resolución del monitos
pygame.init()
width = pygame.display.Info().current_w
height = pygame.display.Info().current_h
# Crear la ventana
screen = pygame.display.set_mode((width, height))
# Mostrar la imagen que contendra las diferencias
difference = pygame.image.load('spot_the_diff.jpg')
# Maximizar la imagen en la pantalla
difference = pygame.transform.scale(difference, (width, height))
screen.blit(difference, (0,0))
# Blitting o transferencia de bloques de bits
pygame.display.update()
# Image sorpresa
bruja = pygame.image.load('bruja.jpg')
bruja = pygame.transform.scale(bruja, (width, height))
# Cargar el sonido
scream = pygame.mixer.Sound('boo.wav')
# Tiempo aleatorio [5, 15]
sleep(randrange(5,15))
# Activar el sonido
scream.play()
# Actualizar la imagen (0,0)
screen.blit(bruja, (0,0))
pygame.display.update()
# Tiempo para jugar
sleep(3)
# Detener el sonido
scream.stop()

pygame.quit()