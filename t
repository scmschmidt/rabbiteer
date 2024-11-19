{
  "timeout": [],
  "status": "completed",
  "started_at": "2024-11-19T12:09:08.543269Z",
  "result": "critical",
  "targets": [
    {
      "agent_id": "6394a6e2-6a70-5c5c-8df8-d228fcfaa462",
      "checks": [
        "BA215C"
      ]
    },
    {
      "agent_id": "726a23ea-a695-5729-b679-5ce02cfea419",
      "checks": [
        "BA215C"
      ]
    }
  ],
  "execution_id": "85ec1f53-7240-46bc-a6fb-161e85bee873",
  "group_id": "4df20783-b3ec-4fa0-9129-068751c096a1",
  "completed_at": "2024-11-19T12:09:08.555026Z",
  "check_results": [
    {
      "agents_check_results": [
        {
          "agent_id": "6394a6e2-6a70-5c5c-8df8-d228fcfaa462",
          "expectation_evaluations": [
            {
              "name": "corosync_conf_file_identical",
              "return_value": {
                "logging": {
                  "debug": "off",
                  "fileline": "off",
                  "logfile": "/var/log/cluster/corosync.log",
                  "logger_subsys": {
                    "debug": "off",
                    "subsys": "QUORUM"
                  },
                  "timestamp": "on",
                  "to_logfile": "no",
                  "to_stderr": "no",
                  "to_syslog": "yes"
                },
                "nodelist": {
                  "node": [
                    {
                      "nodeid": 1,
                      "ring0_addr": "10.0.1.10"
                    },
                    {
                      "nodeid": 2,
                      "ring0_addr": "10.0.2.11"
                    }
                  ]
                },
                "quorum": {
                  "expected_votes": 2,
                  "provider": "corosync_votequorum",
                  "two_node": 1
                },
                "totem": {
                  "clear_node_high_bit": "yes",
                  "cluster_name": "hana_cluster",
                  "consensus": 36000,
                  "crypto_cipher": "aes256",
                  "crypto_hash": "sha1",
                  "interface": [
                    {
                      "mcastport": 5405,
                      "ringnumber": 0,
                      "ttl": 1
                    }
                  ],
                  "join": 60,
                  "max_messages": 20,
                  "secauth": "on",
                  "token": 20000,
                  "token_retransmits_before_loss_const": 6,
                  "transport": "udpu",
                  "version": 2
                }
              },
              "type": "expect_same"
            }
          ],
          "facts": [
            {
              "check_id": "BA215C",
              "name": "corosync_conf_file_content",
              "value": {
                "logging": {
                  "debug": "off",
                  "fileline": "off",
                  "logfile": "/var/log/cluster/corosync.log",
                  "logger_subsys": {
                    "debug": "off",
                    "subsys": "QUORUM"
                  },
                  "timestamp": "on",
                  "to_logfile": "no",
                  "to_stderr": "no",
                  "to_syslog": "yes"
                },
                "nodelist": {
                  "node": [
                    {
                      "nodeid": 1,
                      "ring0_addr": "10.0.1.10"
                    },
                    {
                      "nodeid": 2,
                      "ring0_addr": "10.0.2.11"
                    }
                  ]
                },
                "quorum": {
                  "expected_votes": 2,
                  "provider": "corosync_votequorum",
                  "two_node": 1
                },
                "totem": {
                  "clear_node_high_bit": "yes",
                  "cluster_name": "hana_cluster",
                  "consensus": 36000,
                  "crypto_cipher": "aes256",
                  "crypto_hash": "sha1",
                  "interface": [
                    {
                      "mcastport": 5405,
                      "ringnumber": 0,
                      "ttl": 1
                    }
                  ],
                  "join": 60,
                  "max_messages": 20,
                  "secauth": "on",
                  "token": 20000,
                  "token_retransmits_before_loss_const": 6,
                  "transport": "udpu",
                  "version": 2
                }
              }
            }
          ],
          "values": []
        },
        {
          "agent_id": "726a23ea-a695-5729-b679-5ce02cfea419",
          "expectation_evaluations": [
            {
              "name": "corosync_conf_file_identical",
              "return_value": {
                "logging": {
                  "debug": "off",
                  "fileline": "off",
                  "logfile": "/var/log/cluster/corosync.log",
                  "logger_subsys": {
                    "debug": "off",
                    "subsys": "QUORUM"
                  },
                  "timestamp": "on",
                  "to_logfile": "no",
                  "to_stderr": "no",
                  "to_syslog": "yes"
                },
                "nodelist": {
                  "node": [
                    {
                      "nodeid": 1,
                      "ring0_addr": "10.0.1.10"
                    },
                    {
                      "nodeid": 2,
                      "ring0_addr": "10.0.2.11"
                    }
                  ]
                },
                "quorum": {
                  "expected_votes": 2,
                  "provider": "corosync_votequorum",
                  "two_node": 1
                },
                "totem": {
                  "clear_node_high_bit": "yes",
                  "cluster_name": "hana_cluster",
                  "consensus": 36000,
                  "crypto_cipher": "aes256",
                  "crypto_hash": "sha1",
                  "interface": [
                    {
                      "mcastport": 5405,
                      "ringnumber": 0,
                      "ttl": 1
                    }
                  ],
                  "join": 60,
                  "max_messages": 20,
                  "secauth": "on",
                  "token": 30000,
                  "token_retransmits_before_loss_const": 6,
                  "transport": "udpu",
                  "version": 2
                }
              },
              "type": "expect_same"
            }
          ],
          "facts": [
            {
              "check_id": "BA215C",
              "name": "corosync_conf_file_content",
              "value": {
                "logging": {
                  "debug": "off",
                  "fileline": "off",
                  "logfile": "/var/log/cluster/corosync.log",
                  "logger_subsys": {
                    "debug": "off",
                    "subsys": "QUORUM"
                  },
                  "timestamp": "on",
                  "to_logfile": "no",
                  "to_stderr": "no",
                  "to_syslog": "yes"
                },
                "nodelist": {
                  "node": [
                    {
                      "nodeid": 1,
                      "ring0_addr": "10.0.1.10"
                    },
                    {
                      "nodeid": 2,
                      "ring0_addr": "10.0.2.11"
                    }
                  ]
                },
                "quorum": {
                  "expected_votes": 2,
                  "provider": "corosync_votequorum",
                  "two_node": 1
                },
                "totem": {
                  "clear_node_high_bit": "yes",
                  "cluster_name": "hana_cluster",
                  "consensus": 36000,
                  "crypto_cipher": "aes256",
                  "crypto_hash": "sha1",
                  "interface": [
                    {
                      "mcastport": 5405,
                      "ringnumber": 0,
                      "ttl": 1
                    }
                  ],
                  "join": 60,
                  "max_messages": 20,
                  "secauth": "on",
                  "token": 30000,
                  "token_retransmits_before_loss_const": 6,
                  "transport": "udpu",
                  "version": 2
                }
              }
            }
          ],
          "values": []
        }
      ],
      "check_id": "BA215C",
      "expectation_results": [
        {
          "failure_message": "corosync.conf files are expected to be identical across all nodes, but differ",
          "name": "corosync_conf_file_identical",
          "result": false,
          "type": "expect_same"
        }
      ],
      "result": "critical"
    }
  ],
  "warning_count": 0,
  "passing_count": 0,
  "critical_count": 1
}
