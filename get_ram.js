function getRam(r) {
    r.return(200, JSON.stringify({ ram_mb: 1024 }));
}

export default { getRam };
