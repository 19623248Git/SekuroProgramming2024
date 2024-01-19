;; Auto-generated. Do not edit!


(when (boundp 'package::MagCalc)
  (if (not (find-package "PACKAGE"))
    (make-package "PACKAGE"))
  (shadow 'MagCalc (find-package "PACKAGE")))
(unless (find-package "PACKAGE::MAGCALC")
  (make-package "PACKAGE::MAGCALC"))
(unless (find-package "PACKAGE::MAGCALCREQUEST")
  (make-package "PACKAGE::MAGCALCREQUEST"))
(unless (find-package "PACKAGE::MAGCALCRESPONSE")
  (make-package "PACKAGE::MAGCALCRESPONSE"))

(in-package "ROS")





(defclass package::MagCalcRequest
  :super ros::object
  :slots (_komponenX _komponenY _komponenZ ))

(defmethod package::MagCalcRequest
  (:init
   (&key
    ((:komponenX __komponenX) 0.0)
    ((:komponenY __komponenY) 0.0)
    ((:komponenZ __komponenZ) 0.0)
    )
   (send-super :init)
   (setq _komponenX (float __komponenX))
   (setq _komponenY (float __komponenY))
   (setq _komponenZ (float __komponenZ))
   self)
  (:komponenX
   (&optional __komponenX)
   (if __komponenX (setq _komponenX __komponenX)) _komponenX)
  (:komponenY
   (&optional __komponenY)
   (if __komponenY (setq _komponenY __komponenY)) _komponenY)
  (:komponenZ
   (&optional __komponenZ)
   (if __komponenZ (setq _komponenZ __komponenZ)) _komponenZ)
  (:serialization-length
   ()
   (+
    ;; float64 _komponenX
    8
    ;; float64 _komponenY
    8
    ;; float64 _komponenZ
    8
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; float64 _komponenX
       (sys::poke _komponenX (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _komponenY
       (sys::poke _komponenY (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _komponenZ
       (sys::poke _komponenZ (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; float64 _komponenX
     (setq _komponenX (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _komponenY
     (setq _komponenY (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _komponenZ
     (setq _komponenZ (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;;
   self)
  )

(defclass package::MagCalcResponse
  :super ros::object
  :slots (_magnitude ))

(defmethod package::MagCalcResponse
  (:init
   (&key
    ((:magnitude __magnitude) 0.0)
    )
   (send-super :init)
   (setq _magnitude (float __magnitude))
   self)
  (:magnitude
   (&optional __magnitude)
   (if __magnitude (setq _magnitude __magnitude)) _magnitude)
  (:serialization-length
   ()
   (+
    ;; float64 _magnitude
    8
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; float64 _magnitude
       (sys::poke _magnitude (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; float64 _magnitude
     (setq _magnitude (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;;
   self)
  )

(defclass package::MagCalc
  :super ros::object
  :slots ())

(setf (get package::MagCalc :md5sum-) "55d1a215f43fd1f64eb105a505b172c4")
(setf (get package::MagCalc :datatype-) "package/MagCalc")
(setf (get package::MagCalc :request) package::MagCalcRequest)
(setf (get package::MagCalc :response) package::MagCalcResponse)

(defmethod package::MagCalcRequest
  (:response () (instance package::MagCalcResponse :init)))

(setf (get package::MagCalcRequest :md5sum-) "55d1a215f43fd1f64eb105a505b172c4")
(setf (get package::MagCalcRequest :datatype-) "package/MagCalcRequest")
(setf (get package::MagCalcRequest :definition-)
      "float64 komponenX
float64 komponenY
float64 komponenZ
---
float64 magnitude
")

(setf (get package::MagCalcResponse :md5sum-) "55d1a215f43fd1f64eb105a505b172c4")
(setf (get package::MagCalcResponse :datatype-) "package/MagCalcResponse")
(setf (get package::MagCalcResponse :definition-)
      "float64 komponenX
float64 komponenY
float64 komponenZ
---
float64 magnitude
")



(provide :package/MagCalc "55d1a215f43fd1f64eb105a505b172c4")


