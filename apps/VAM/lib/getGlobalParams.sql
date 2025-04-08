   SELECT *
    FROM global_params
    WHERE 
        (NULLIF({{ appNameSelect.value }}, '') IS NULL OR app_name = {{ appNameSelect.value }})
        AND (NULLIF({{ platformSelect.value }}, '') IS NULL OR platform = {{ platformSelect.value }})
        AND (NULLIF({{ streamTypeSelect.value }}, '') IS NULL OR stream_type = {{ streamTypeSelect.value }})
        AND (NULLIF({{ variantIdSelect.value }} , '') IS NULL OR variant_id = {{ variantIdSelect.value }})
LIMIT {{ globalParamsTable.pagination.pageSize }} 
OFFSET {{ globalParamsTable.pagination.offset }};