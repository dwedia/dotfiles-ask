import os
import sys
import glob
from PIL import Image

def resize_image(input_path, output_path, target_size=(1440, 810)):
    """Resize an image while maintaining aspect ratio, ensuring the largest dimension fits target_size."""
    with Image.open(input_path) as img:
        img.thumbnail(target_size, Image.LANCZOS)  # Maintain aspect ratio
        img.save(output_path, quality=100)  # Save optimized image

def process_images(input_patterns, output_folder, target_size=(1440, 810)):
    """Process images matching input patterns and save them to the output folder."""
    os.makedirs(output_folder, exist_ok=True)

    # Resolve wildcard patterns into a list of files
    input_files = []
    for pattern in input_patterns:
        input_files.extend(glob.glob(pattern))

    if not input_files:
        print("No matching images found.")
        return

    for file in input_files:
        if not os.path.isfile(file):
            print(f"Skipping: {file} (not found)")
            continue

        filename = os.path.basename(file)
        output_path = os.path.join(output_folder, filename)

        try:
            resize_image(file, output_path, target_size)
            print(f"Resized and saved: {output_path}")
        except Exception as e:
            print(f"Error processing {file}: {e}")

if __name__ == "__main__":
    if len(sys.argv) < 3:
        print("Usage: python resize_images.py <image_pattern1> [image_pattern2 ...] <output_folder>")
        sys.exit(1)

    output_dir = sys.argv[-1]  # Last argument is the output folder
    image_patterns = sys.argv[1:-1]  # All but the last argument are input files/patterns

    process_images(image_patterns, output_dir)
