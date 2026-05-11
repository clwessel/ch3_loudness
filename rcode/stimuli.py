# Load libraries
import librosa
import librosa.display
import matplotlib.pyplot as plt
import os



# Import stimuli information
sounds = []
files = os.listdir("sounds")[1:9]
files.sort()
for i in files:
    name = "sounds/" + i
    y, sr = librosa.load(name, sr = None)
    sounds.append(y)



# Create plot
dcount = 0
fig, ax = plt.subplots(nrows=2, ncols=4)

for i in range(0,2):
    for j in range(0,4):
        librosa.display.waveshow(
            sounds[dcount],
            sr=sr,
            color = "black",
            ax = ax[i,j]
        )
        ax[i,j].set_ylim([-1,1])
        ax[i,j].set_xlim([-0.05,1])
        ax[i,j].set_xlabel('')
        ax[i,j].set_xticks([])
        ax[i,j].set_yticks([])
        dcount += 1
ax[0,0].set_ylabel('Flat')
ax[1,0].set_ylabel('Percussive')
ax[0,0].set_title("0dB")
ax[0,1].set_title("-5dB")
ax[0,2].set_title("-10dB")
ax[0,3].set_title("-20dB")

plt.subplots_adjust(wspace = 0, hspace = 0)
plt.savefig("plot.png", format="png") 