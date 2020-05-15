
response = requests.post(
    'https://observe.lco.global/api/requestgroups/',
    headers={'Authorization': 'Token {}'.format(API_TOKEN)},
    json=requestgroup
)

try:
    response.raise_for_status()
except requests.exceptions.HTTPError as exc:
    print('Request failed: {}'.format(response.content))
    raise exc

requestgroup_dict = response.json()  

print('View the observing request: https://observe.lco.global/requestgroups/{}/'.format(requestgroup_dict['id']))

