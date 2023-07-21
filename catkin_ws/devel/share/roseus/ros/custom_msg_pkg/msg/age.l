;; Auto-generated. Do not edit!


(when (boundp 'custom_msg_pkg::age)
  (if (not (find-package "CUSTOM_MSG_PKG"))
    (make-package "CUSTOM_MSG_PKG"))
  (shadow 'age (find-package "CUSTOM_MSG_PKG")))
(unless (find-package "CUSTOM_MSG_PKG::AGE")
  (make-package "CUSTOM_MSG_PKG::AGE"))

(in-package "ROS")
;;//! \htmlinclude age.msg.html


(defclass custom_msg_pkg::age
  :super ros::object
  :slots (_year _month _day ))

(defmethod custom_msg_pkg::age
  (:init
   (&key
    ((:year __year) 0)
    ((:month __month) 0)
    ((:day __day) 0)
    )
   (send-super :init)
   (setq _year (round __year))
   (setq _month (round __month))
   (setq _day (round __day))
   self)
  (:year
   (&optional __year)
   (if __year (setq _year __year)) _year)
  (:month
   (&optional __month)
   (if __month (setq _month __month)) _month)
  (:day
   (&optional __day)
   (if __day (setq _day __day)) _day)
  (:serialization-length
   ()
   (+
    ;; int8 _year
    1
    ;; int8 _month
    1
    ;; int8 _day
    1
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; int8 _year
       (write-byte _year s)
     ;; int8 _month
       (write-byte _month s)
     ;; int8 _day
       (write-byte _day s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; int8 _year
     (setq _year (sys::peek buf ptr- :char)) (incf ptr- 1)
     (if (> _year 127) (setq _year (- _year 256)))
   ;; int8 _month
     (setq _month (sys::peek buf ptr- :char)) (incf ptr- 1)
     (if (> _month 127) (setq _month (- _month 256)))
   ;; int8 _day
     (setq _day (sys::peek buf ptr- :char)) (incf ptr- 1)
     (if (> _day 127) (setq _day (- _day 256)))
   ;;
   self)
  )

(setf (get custom_msg_pkg::age :md5sum-) "b467db0ba69e6a9712f4aa2325c633b3")
(setf (get custom_msg_pkg::age :datatype-) "custom_msg_pkg/age")
(setf (get custom_msg_pkg::age :definition-)
      "int8 year
int8 month
int8 day
")



(provide :custom_msg_pkg/age "b467db0ba69e6a9712f4aa2325c633b3")


