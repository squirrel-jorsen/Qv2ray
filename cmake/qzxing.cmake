add_definitions(-DQZXING_LIBRARY -DZXING_ICONV_CONST -DDISABLE_LIBRARY_FEATURES -DENABLE_DECODER_QR_CODE -DENABLE_ENCODER_QR_CODE -DENABLE_ENCODER_GENERIC)
set(QZXING_DIR ${CMAKE_SOURCE_DIR}/3rdparty/qzxing/src)
set(QZXING_SOURCES
    ${QZXING_DIR}/CameraImageWrapper.cpp
    ${QZXING_DIR}/QZXing.cpp
    ${QZXING_DIR}/ImageHandler.cpp
    ${QZXING_DIR}/zxing/zxing/ResultIO.cpp
    ${QZXING_DIR}/zxing/zxing/InvertedLuminanceSource.cpp
    ${QZXING_DIR}/zxing/zxing/ChecksumException.cpp
    ${QZXING_DIR}/zxing/zxing/ResultPointCallback.cpp
    ${QZXING_DIR}/zxing/zxing/ResultPoint.cpp
    ${QZXING_DIR}/zxing/zxing/Result.cpp
    ${QZXING_DIR}/zxing/zxing/ResultMetadata.cpp
    ${QZXING_DIR}/zxing/zxing/Reader.cpp
    ${QZXING_DIR}/zxing/zxing/MultiFormatReader.cpp
    ${QZXING_DIR}/zxing/zxing/LuminanceSource.cpp
    ${QZXING_DIR}/zxing/zxing/FormatException.cpp
    ${QZXING_DIR}/zxing/zxing/Exception.cpp
    ${QZXING_DIR}/zxing/zxing/DecodeHints.cpp
    ${QZXING_DIR}/zxing/zxing/BinaryBitmap.cpp
    ${QZXING_DIR}/zxing/zxing/Binarizer.cpp
    ${QZXING_DIR}/zxing/zxing/BarcodeFormat.cpp
    ${QZXING_DIR}/zxing/zxing/ReaderException.cpp
    ${QZXING_DIR}/zxing/zxing/IllegalStateException.cpp
    ${QZXING_DIR}/zxing/zxing/NotFoundException.cpp
    ${QZXING_DIR}/zxing/zxing/WriterException.cpp
    ${QZXING_DIR}/zxing/zxing/common/Counted.cpp
    ${QZXING_DIR}/zxing/zxing/common/StringUtils.cpp
    ${QZXING_DIR}/zxing/zxing/common/Str.cpp
    ${QZXING_DIR}/zxing/zxing/common/PerspectiveTransform.cpp
    ${QZXING_DIR}/zxing/zxing/common/IllegalArgumentException.cpp
    ${QZXING_DIR}/zxing/zxing/common/HybridBinarizer.cpp
    ${QZXING_DIR}/zxing/zxing/common/GridSampler.cpp
    ${QZXING_DIR}/zxing/zxing/common/GreyscaleRotatedLuminanceSource.cpp
    ${QZXING_DIR}/zxing/zxing/common/GreyscaleLuminanceSource.cpp
    ${QZXING_DIR}/zxing/zxing/common/GlobalHistogramBinarizer.cpp
    ${QZXING_DIR}/zxing/zxing/common/DetectorResult.cpp
    ${QZXING_DIR}/zxing/zxing/common/DecoderResult.cpp
    ${QZXING_DIR}/zxing/zxing/common/CharacterSetECI.cpp
    ${QZXING_DIR}/zxing/zxing/common/BitSource.cpp
    ${QZXING_DIR}/zxing/zxing/common/BitMatrix.cpp
    ${QZXING_DIR}/zxing/zxing/common/BitArray.cpp
    ${QZXING_DIR}/zxing/zxing/common/BitArrayIO.cpp
    ${QZXING_DIR}/zxing/zxing/common/detector/WhiteRectangleDetector.cpp
    ${QZXING_DIR}/zxing/zxing/common/detector/MonochromeRectangleDetector.cpp
    ${QZXING_DIR}/zxing/zxing/common/reedsolomon/ReedSolomonException.cpp
    ${QZXING_DIR}/zxing/zxing/common/reedsolomon/ReedSolomonDecoder.cpp
    ${QZXING_DIR}/zxing/zxing/common/reedsolomon/GenericGFPoly.cpp
    ${QZXING_DIR}/zxing/zxing/common/reedsolomon/GenericGF.cpp
    ${QZXING_DIR}/zxing/zxing/multi/MultipleBarcodeReader.cpp
    ${QZXING_DIR}/zxing/zxing/multi/GenericMultipleBarcodeReader.cpp
    ${QZXING_DIR}/zxing/zxing/multi/ByQuadrantReader.cpp
    ${QZXING_DIR}/zxing/bigint/BigUnsignedInABase.cc
    ${QZXING_DIR}/zxing/bigint/BigUnsigned.cc
    ${QZXING_DIR}/zxing/bigint/BigIntegerUtils.cc
    ${QZXING_DIR}/zxing/bigint/BigIntegerAlgorithms.cc
    ${QZXING_DIR}/zxing/bigint/BigInteger.cc
    ${QZXING_DIR}/zxing/zxing/qrcode/decoder/QRBitMatrixParser.cpp
    ${QZXING_DIR}/zxing/zxing/qrcode/decoder/QRDataBlock.cpp
    ${QZXING_DIR}/zxing/zxing/qrcode/decoder/QRDataMask.cpp
    ${QZXING_DIR}/zxing/zxing/qrcode/decoder/QRDecodedBitStreamParser.cpp
    ${QZXING_DIR}/zxing/zxing/qrcode/decoder/QRDecoder.cpp
    ${QZXING_DIR}/zxing/zxing/qrcode/detector/QRAlignmentPattern.cpp
    ${QZXING_DIR}/zxing/zxing/qrcode/detector/QRAlignmentPatternFinder.cpp
    ${QZXING_DIR}/zxing/zxing/qrcode/detector/QRDetector.cpp
    ${QZXING_DIR}/zxing/zxing/qrcode/detector/QRFinderPattern.cpp
    ${QZXING_DIR}/zxing/zxing/qrcode/detector/QRFinderPatternFinder.cpp
    ${QZXING_DIR}/zxing/zxing/qrcode/detector/QRFinderPatternInfo.cpp
    ${QZXING_DIR}/zxing/zxing/qrcode/QRCodeReader.cpp
    ${QZXING_DIR}/zxing/zxing/multi/qrcode/QRCodeMultiReader.cpp
    ${QZXING_DIR}/zxing/zxing/multi/qrcode/detector/MultiFinderPatternFinder.cpp
    ${QZXING_DIR}/zxing/zxing/multi/qrcode/detector/MultiDetector.cpp
    ${QZXING_DIR}/zxing/zxing/qrcode/encoder/ByteMatrix.cpp
    ${QZXING_DIR}/zxing/zxing/qrcode/encoder/QREncoder.cpp
    ${QZXING_DIR}/zxing/zxing/qrcode/encoder/MaskUtil.cpp
    ${QZXING_DIR}/zxing/zxing/qrcode/encoder/MatrixUtil.cpp
    ${QZXING_DIR}/zxing/zxing/qrcode/encoder/QRCode.cpp
    ${QZXING_DIR}/zxing/zxing/qrcode/QRVersion.cpp
    ${QZXING_DIR}/zxing/zxing/qrcode/QRFormatInformation.cpp
    ${QZXING_DIR}/zxing/zxing/qrcode/QRErrorCorrectionLevel.cpp
    ${QZXING_DIR}/zxing/zxing/qrcode/decoder/QRMode.cpp
    ${QZXING_DIR}/zxing/zxing/EncodeHint.cpp
    ${QZXING_DIR}/zxing/zxing/UnsupportedEncodingException.cpp
    ${QZXING_DIR}/zxing/zxing/common/reedsolomon/ReedSolomonEncoder.cpp
)
set(QZXING_INCLUDE_PATH 
    ${QZXING_DIR}
    ${QZXING_DIR}/zxing
)
if(MSVC)
    list(APPEND QZXING_SOURCES ${QZXING_DIR}/zxing/win32/zxing/win_iconv.c)
    list(APPEND QZXING_INCLUDE_PATH
        ${QZXING_DIR}/win32/zxing
        ${QZXING_DIR}/zxing/win32/zxing/msvc
    )
endif()