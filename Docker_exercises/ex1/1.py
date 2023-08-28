import sys
import os
import numpy as np
import time
from PIL import Image, ImageFilter

exec = os.environ.get('EXEC')
 
if exec == 'true':
    
        def manipulate_image(image_path):
                
                        image = Image.open(image_path)

                        print("Image format:", image.format)
                        print("Image mode:", image.mode)
                        print("Image size:", image.size)

                        image_array = np.array(image)

                        blurred_array = np.array(image.filter(ImageFilter.BLUR))

                        blurred_image = Image.fromarray(blurred_array)

                        blurred_image_path = "blurred_" + os.path.basename(image_path)
                        blurred_image.save(blurred_image_path)

                        print("Blurred image saved as:", blurred_image_path)
                        # time.sleep(600)
            

        if __name__ == "__main__":

                if len(sys.argv) != 2:
                        print("Usage: python script.py <image_path>")
                        sys.exit(1)

                image_path = sys.argv[1]
                manipulate_image(image_path)
