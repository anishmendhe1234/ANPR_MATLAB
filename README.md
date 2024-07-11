# ANPR_MATLAB

This repository contains the implementation of an Automatic Number Plate Recognition (ANPR) system using MATLAB. The system utilizes image processing techniques to detect and recognize vehicle number plates from images or video streams. It can be used for various applications such as traffic monitoring, toll collection systems, parking lot management, and law enforcement.

Table of contents
## Introduction {#Introduction}
## Methodology {#Methodology}
## Usage {#Usage}
## Results and Discussion {#results-and-discussion}
## Implementation {#Implementation}
## Dependencies {#Dependencies}
## Contributing {#Contributing}
## License {#License}

##Introduction
An automatic vehicle identification system is designed to capture vehicle images, extract license plates, recognize characters using OCR, and compare them against a database. It involves several stages including image acquisition, pre-processing, plate detection, plate segmentation, character recognition, and output display. The system utilizes various image processing techniques such as resizing, noise removal, edge detection, morphological operations, and feature extraction to identify and recognize number plates accurately.

##Methodology
## Methodology

The ANPR system follows a step-by-step process to achieve accurate license plate recognition:

1. **Image Acquisition:**
    * Images containing vehicles with number plates are acquired using a camera. Alternatively, pre-existing datasets can be used.

2. **Pre-processing:**
    * The captured images undergo pre-processing to enhance their quality for better detection and recognition. This may involve:
        * **Resizing:** Adjusting the image size for efficient processing.
        * **Noise Removal:** Eliminating unwanted artifacts from the image.
        * **Contrast Enhancement:** Improving the distinction between objects and their background.
        * **Image Filtering:** Applying filters to remove specific noise or enhance specific features.

3. **Plate Detection:**
    * Algorithms are employed to locate the number plate region within the pre-processed image. Techniques used for this stage might include:
        * **Edge Detection:** Identifying boundaries of objects, useful for plate localization.
        * **Morphological Operations:** Manipulating shapes to emphasize relevant plate features.
        * **Color Thresholding:** Isolating the number plate based on its dominant color.

4. **Plate Segmentation:**
    * The detected number plate region is isolated from the rest of the image. This step separates the individual characters within the plate for recognition. Techniques like:
        * **Connected Component Analysis:** Identifying and separating regions connected by pixels.
        * **Contour Analysis:** Extracting the boundaries of the characters.

5. **Character Recognition:**
    * Optical Character Recognition (OCR) techniques are applied to identify the individual characters on the segmented plate. Common methods include:
        * **Template Matching:** Comparing characters to pre-defined templates.
        * **Feature Extraction:** Identifying and analyzing key characteristics of each character.
        * **Machine Learning:** Training models to recognize characters based on training data.

6. **Output Display:**
    * The recognized license plate number is displayed visually or stored for further processing. This may include displaying the original image, the detected plate location, and the final recognized characters.

By following these steps, the ANPR system aims to achieve accurate and efficient license plate recognition.

## Usage

To use the ANPR system, follow these steps:

1. Clone the repository to your local machine.
2. Launch MATLAB and navigate to the project directory.
3. Modify the code to specify the input image or video stream.
4. Run the MATLAB script to execute the ANPR system.
5. View the output, displaying the recognized characters and the processed image with the detected number plate highlighted.

##Results and Discussion

The ANPR system has been tested on various images of vehicles of different sizes and has shown good results in detecting and recognizing number plates. The system's accuracy, processing time, and detection rate can be evaluated by comparing the recognized characters with the ground truth data.

##Implementation

The implementation of the ANPR system is done in MATLAB (R2022b). The code consists of several MATLAB scripts and functions that perform specific tasks such as image pre-processing, plate detection, plate segmentation, and character recognition. These scripts can be executed sequentially to run the ANPR system.

##Dependencies

The ANPR system in MATLAB relies on the following dependencies:

1.MATLAB (R2022b or higher)
2.Image Processing Toolbox
Make sure you have MATLAB installed on your machine and the Image Processing Toolbox is available.

##Contributing
Contributions to this project are welcome. If you find any issues or have suggestions for improvements, please feel free to submit a pull request.
##License
You are free to use, modify, and distribute the code for personal and commercial purposes.


