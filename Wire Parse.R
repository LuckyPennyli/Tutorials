library(tesseract)
eng <- tesseract("eng")
text <- tesseract::ocr('https://i.stack.imgur.com/i1Abv.png', engine = eng)
text
