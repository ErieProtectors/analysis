SELECT
    sd.document_number,
    s.spill_type,
    sd.closed,
    s.human_error,
    s.equipment_failure,
    s.corrective_actions_completed,
    sd.incident_date,
    s.date_of_discovery AS discovery_date,
    s.initial_report_date,
    sd.submit_date,
    sd.resolution_date,
    s.supplemental_report_date,
    sd.operator,
    sd.facility_type,
    sd.facility_id,
    s.api_county_code,
    s.api_sequence_number,
    sd.county,
    sd.municipality,
    sd.lat,
    sd.long,
    s.oil_bbls_spilled,
    s.condensate_bbls_spilled,
    s.produced_water_bbls_spilled,
    s.drilling_fluid_bbls_spilled,
    s.flow_back_fluid_bbls_spilled,
    s.other_ep_waste_bbls_spilled
FROM
    spills_dad sd
    LEFT JOIN spills s ON (
        sd.document_number = s.tracking_number
        AND NOT EXISTS (
            SELECT
                1
            from
                spills s1
            WHERE
                s1.tracking_number = sd.document_number
                AND s1.document_number > s.document_number
        )
    );