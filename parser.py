import csv
import numpy as np
import cv2

def parse_csv(image_path, csv_path):
    img = cv2.imread(image_path)
    datafile = open(csv_path, 'r')
    datareader = csv.reader(datafile)
    bboxes = []
    for index,row in enumerate(datareader):
        row = [int(x) for x in row]
        poly = []
        for i in range(0,len(row),2):
            poly.append(np.array([row[i], row[i+1]]))
        poly = np.array(poly)
        x,y,w,h = cv2.boundingRect(poly)
        bbox = [[x,y], [x+w, y], [x+w, y+h], [x, y+h]]
        cv2.imwrite('/input/output/im_' + str(index) + '.jpg', img[y:y+h, x:x+w].copy())
        bboxes.append(bbox)
    return bboxes