var stats = {
    type: "GROUP",
name: "Global Information",
path: "",
pathFormatted: "group_missing-name-b06d1",
stats: {
    "name": "Global Information",
    "numberOfRequests": {
        "total": "2000",
        "ok": "2000",
        "ko": "0"
    },
    "minResponseTime": {
        "total": "119",
        "ok": "119",
        "ko": "-"
    },
    "maxResponseTime": {
        "total": "549",
        "ok": "549",
        "ko": "-"
    },
    "meanResponseTime": {
        "total": "202",
        "ok": "202",
        "ko": "-"
    },
    "standardDeviation": {
        "total": "35",
        "ok": "35",
        "ko": "-"
    },
    "percentiles1": {
        "total": "199",
        "ok": "199",
        "ko": "-"
    },
    "percentiles2": {
        "total": "216",
        "ok": "216",
        "ko": "-"
    },
    "percentiles3": {
        "total": "246",
        "ok": "246",
        "ko": "-"
    },
    "percentiles4": {
        "total": "282",
        "ok": "282",
        "ko": "-"
    },
    "group1": {
    "name": "t < 800 ms",
    "count": 2000,
    "percentage": 100
},
    "group2": {
    "name": "800 ms < t < 1200 ms",
    "count": 0,
    "percentage": 0
},
    "group3": {
    "name": "t > 1200 ms",
    "count": 0,
    "percentage": 0
},
    "group4": {
    "name": "failed",
    "count": 0,
    "percentage": 0
},
    "meanNumberOfRequestsPerSecond": {
        "total": "37.736",
        "ok": "37.736",
        "ko": "-"
    }
},
contents: {
"req_get--api-users-facf1": {
        type: "REQUEST",
        name: "GET /api/users",
path: "GET /api/users",
pathFormatted: "req_get--api-users-facf1",
stats: {
    "name": "GET /api/users",
    "numberOfRequests": {
        "total": "1000",
        "ok": "1000",
        "ko": "0"
    },
    "minResponseTime": {
        "total": "119",
        "ok": "119",
        "ko": "-"
    },
    "maxResponseTime": {
        "total": "549",
        "ok": "549",
        "ko": "-"
    },
    "meanResponseTime": {
        "total": "203",
        "ok": "203",
        "ko": "-"
    },
    "standardDeviation": {
        "total": "40",
        "ok": "40",
        "ko": "-"
    },
    "percentiles1": {
        "total": "199",
        "ok": "199",
        "ko": "-"
    },
    "percentiles2": {
        "total": "216",
        "ok": "216",
        "ko": "-"
    },
    "percentiles3": {
        "total": "246",
        "ok": "246",
        "ko": "-"
    },
    "percentiles4": {
        "total": "289",
        "ok": "289",
        "ko": "-"
    },
    "group1": {
    "name": "t < 800 ms",
    "count": 1000,
    "percentage": 100
},
    "group2": {
    "name": "800 ms < t < 1200 ms",
    "count": 0,
    "percentage": 0
},
    "group3": {
    "name": "t > 1200 ms",
    "count": 0,
    "percentage": 0
},
    "group4": {
    "name": "failed",
    "count": 0,
    "percentage": 0
},
    "meanNumberOfRequestsPerSecond": {
        "total": "18.868",
        "ok": "18.868",
        "ko": "-"
    }
}
    },"req_get--api-users--99661": {
        type: "REQUEST",
        name: "GET /api/users/1",
path: "GET /api/users/1",
pathFormatted: "req_get--api-users--99661",
stats: {
    "name": "GET /api/users/1",
    "numberOfRequests": {
        "total": "1000",
        "ok": "1000",
        "ko": "0"
    },
    "minResponseTime": {
        "total": "120",
        "ok": "120",
        "ko": "-"
    },
    "maxResponseTime": {
        "total": "293",
        "ok": "293",
        "ko": "-"
    },
    "meanResponseTime": {
        "total": "201",
        "ok": "201",
        "ko": "-"
    },
    "standardDeviation": {
        "total": "29",
        "ok": "29",
        "ko": "-"
    },
    "percentiles1": {
        "total": "199",
        "ok": "199",
        "ko": "-"
    },
    "percentiles2": {
        "total": "216",
        "ok": "216",
        "ko": "-"
    },
    "percentiles3": {
        "total": "246",
        "ok": "246",
        "ko": "-"
    },
    "percentiles4": {
        "total": "274",
        "ok": "274",
        "ko": "-"
    },
    "group1": {
    "name": "t < 800 ms",
    "count": 1000,
    "percentage": 100
},
    "group2": {
    "name": "800 ms < t < 1200 ms",
    "count": 0,
    "percentage": 0
},
    "group3": {
    "name": "t > 1200 ms",
    "count": 0,
    "percentage": 0
},
    "group4": {
    "name": "failed",
    "count": 0,
    "percentage": 0
},
    "meanNumberOfRequestsPerSecond": {
        "total": "18.868",
        "ok": "18.868",
        "ko": "-"
    }
}
    }
}

}

function fillStats(stat){
    $("#numberOfRequests").append(stat.numberOfRequests.total);
    $("#numberOfRequestsOK").append(stat.numberOfRequests.ok);
    $("#numberOfRequestsKO").append(stat.numberOfRequests.ko);

    $("#minResponseTime").append(stat.minResponseTime.total);
    $("#minResponseTimeOK").append(stat.minResponseTime.ok);
    $("#minResponseTimeKO").append(stat.minResponseTime.ko);

    $("#maxResponseTime").append(stat.maxResponseTime.total);
    $("#maxResponseTimeOK").append(stat.maxResponseTime.ok);
    $("#maxResponseTimeKO").append(stat.maxResponseTime.ko);

    $("#meanResponseTime").append(stat.meanResponseTime.total);
    $("#meanResponseTimeOK").append(stat.meanResponseTime.ok);
    $("#meanResponseTimeKO").append(stat.meanResponseTime.ko);

    $("#standardDeviation").append(stat.standardDeviation.total);
    $("#standardDeviationOK").append(stat.standardDeviation.ok);
    $("#standardDeviationKO").append(stat.standardDeviation.ko);

    $("#percentiles1").append(stat.percentiles1.total);
    $("#percentiles1OK").append(stat.percentiles1.ok);
    $("#percentiles1KO").append(stat.percentiles1.ko);

    $("#percentiles2").append(stat.percentiles2.total);
    $("#percentiles2OK").append(stat.percentiles2.ok);
    $("#percentiles2KO").append(stat.percentiles2.ko);

    $("#percentiles3").append(stat.percentiles3.total);
    $("#percentiles3OK").append(stat.percentiles3.ok);
    $("#percentiles3KO").append(stat.percentiles3.ko);

    $("#percentiles4").append(stat.percentiles4.total);
    $("#percentiles4OK").append(stat.percentiles4.ok);
    $("#percentiles4KO").append(stat.percentiles4.ko);

    $("#meanNumberOfRequestsPerSecond").append(stat.meanNumberOfRequestsPerSecond.total);
    $("#meanNumberOfRequestsPerSecondOK").append(stat.meanNumberOfRequestsPerSecond.ok);
    $("#meanNumberOfRequestsPerSecondKO").append(stat.meanNumberOfRequestsPerSecond.ko);
}
