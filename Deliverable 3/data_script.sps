DESCRIPTIVES VARIABLES= GDP_per_capita_current_U.S._dollars
   /STATISTICS=MEAN STDDEV MIN MAX.
   
DESCRIPTIVES VARIABLES= GDP_per_capita_current_U.S._dollars
   /STATISTICS=MEAN STDDEV RANGE.
   
AGGREGATE
        OUTFILE={*,’temp.csv’,file_handle} [MODE={REPLACE, ADDVARIABLES}]
        /PRESORTED
        /DOCUMENT
        /MISSING=COLUMNWISE
        /BREAK=var_list
        /dest_var[’label’]…=agr_func(src_vars, args…)… 