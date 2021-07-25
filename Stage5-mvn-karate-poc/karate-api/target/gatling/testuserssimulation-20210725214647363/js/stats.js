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
        "total": "57",
        "ok": "57",
        "ko": "-"
    },
    "maxResponseTime": {
        "total": "696",
        "ok": "696",
        "ko": "-"
    },
    "meanResponseTime": {
        "total": "113",
        "ok": "113",
        "ko": "-"
    },
    "standardDeviation": {
        "total": "43",
        "ok": "43",
        "ko": "-"
    },
    "percentiles1": {
        "total": "109",
        "ok": "109",
        "ko": "-"
    },
    "percentiles2": {
        "total": "124",
        "ok": "124",
        "ko": "-"
    },
    "percentiles3": {
        "total": "158",
        "ok": "158",
        "ko": "-"
    },
    "percentiles4": {
        "total": "324",
        "ok": "324",
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
        "total": "22.727",
        "ok": "22.727",
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
        "total": "58",
        "ok": "58",
        "ko": "-"
    },
    "maxResponseTime": {
        "total": "696",
        "ok": "696",
        "ko": "-"
    },
    "meanResponseTime": {
        "total": "114",
        "ok": "114",
        "ko": "-"
    },
    "standardDeviation": {
        "total": "48",
        "ok": "48",
        "ko": "-"
    },
    "percentiles1": {
        "total": "109",
        "ok": "109",
        "ko": "-"
    },
    "percentiles2": {
        "total": "123",
        "ok": "123",
        "ko": "-"
    },
    "percentiles3": {
        "total": "155",
        "ok": "155",
        "ko": "-"
    },
    "percentiles4": {
        "total": "392",
        "ok": "392",
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
        "total": "11.364",
        "ok": "11.364",
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
        "total": "57",
        "ok": "57",
        "ko": "-"
    },
    "maxResponseTime": {
        "total": "497",
        "ok": "497",
        "ko": "-"
    },
    "meanResponseTime": {
        "total": "113",
        "ok": "113",
        "ko": "-"
    },
    "standardDeviation": {
        "total": "38",
        "ok": "38",
        "ko": "-"
    },
    "percentiles1": {
        "total": "109",
        "ok": "109",
        "ko": "-"
    },
    "percentiles2": {
        "total": "124",
        "ok": "124",
        "ko": "-"
    },
    "percentiles3": {
        "total": "159",
        "ok": "159",
        "ko": "-"
    },
    "percentiles4": {
        "total": "310",
        "ok": "310",
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
        "total": "11.364",
        "ok": "11.364",
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
