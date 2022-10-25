
		<result column="report_approver" property="report_approver" />
		<result column="appro_date" property="appro_date" />
		<result column="member_id" property="member_id" />
		<result column="member_position" property="member_position" />

	<select id="reportList" parameterType="map" resultMap="reportMap" >
		SELECT
			rnum,
			re.report_no,
			re.report_title,
			re.report_name,
			to_char( re.report_date, 'YYYY-MM-dd' ) report_date,
			ap.report_approver,
			re.report_status
		FROM 
			(
		    select
		    	row_number() over(order by report_no desc) rnum,
		        report_no,
		        report_id,
		        report_title,
		        report_name,
		        report_date,
		        report_status
		    from PAS_report		    
		    WHERE report_id = #{ member_id }
			<choose>
				<when test="member_position == 'DD'">
					OR ( report_status = 'DR' OR report_id = #{ member_id } )
				</when>
				<when test="member_position == 'CC'">
					OR ( report_status = 'CR' OR report_id = #{ member_id } )
				</when>
				<when test="member_position == 'BB'">
					OR ( report_status = 'BR' OR report_id = #{ member_id } )
				</when>
				<when test="member_position == 'AA'">
					OR ( report_status = 'AR' OR report_id = #{ member_id } )
				</when>
			</choose>
		    AND 
		    ( report_name like '%'||#{schText}||'%'
			  OR report_title like '%'||#{schText}||'%')
		    <include refid="schSql"></include>
		    )re 
		LEFT JOIN 
			(
			select    
			    report_no,
			    max(report_approver) KEEP (DENSE_RANK LAST order by appro_date) report_approver
			from pas_appro
			GROUP by report_no
			) ap
		ON re.report_no = ap.report_no
		WHERE rnum between #{pageNo} * #{listSize} - #{listSize} +1 AND #{pageNo} * #{listSize} 			
	</select>
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	