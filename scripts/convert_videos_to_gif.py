from moviepy.editor import VideoFileClip
import glob

# Update the output folder before use
ouput_folder = '/home/xinzhi/Text-To-Video-Finetuning/input/data/'

video_files = glob.glob(ouput_folder + '*')

for video_file in video_files:
    if video_file.endswith(".mp4"):
        videoClip = VideoFileClip(video_file)
        gif_clip = videoClip.subclip(0,-1)
        gif_video_file = video_file.replace(".mp4", ".gif")
        gif_clip.write_gif(gif_video_file)



