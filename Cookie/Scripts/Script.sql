SELECT *
FROM
  (SELECT rqst_no,
    rqst_dt,
    rqst_ty,
    hos_name,
    mctt_stt,
    ROWNUM AS rnum
  FROM MEDIRQLISTITEM
  WHERE NOT MCTT_STT = 'Y'    --진료완료가 아닌 경우
  AND RQST_TY        = 'D001' --접수인 경우
  AND SIC_ID         = 'sic1'
  ORDER BY RQST_NO DESC
  )
WHERE rnum BETWEEN 5 AND 10;
