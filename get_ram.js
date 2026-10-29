function getRam(r) {
    r.headersOut['Content-Type'] = 'application/json';
    r.return(200, JSON.stringify({ ram_mb: 1024 }));
}

export default { getRam };
