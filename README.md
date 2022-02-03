# FR_encoding_API
## Facial recognition API call demo
### Running the service
You can run the service by cloning the repository and build the docker yourself
```
git clone https://github.com/iamjoseph331/FR_encoding_API.git
docker image build -t api-server .
docker run -d -p 80:9801 api-server
```
Or by directly running a pre-built image
```
docker run -d -p 80:9801 josephchen1/fr-api-server
```
### Interfaces
Open your browser and go to `localhost`. You should see the following page.
![](https://i.imgur.com/0AwUbOz.png)
You can also access the service directly by the `/encode` endpoint
```
curl -F "file=@your_image.jpeg" localhost/encode   
```
### Results
You should be able to get a 128-dimensional vector describing the face in the image. Note that the vector is notnormalized, and comparison between vectors is therefore suggested to use distance over cosine.
![](https://i.imgur.com/94YeTXb.png)

```
{
  "Result": [
    -0.10643575340509415, 
    0.1808348000049591, 
    0.049874186515808105, 
    -0.0033185386564582586, 
    -0.07170841842889786, 
    0.03943166881799698, 
    -0.08008832484483719, 
    -0.05954606086015701, 
    0.04518205299973488, 
    0.008323241956532001, 
    0.21763122081756592, 
    -0.06655790656805038, 
    -0.30601102113723755, 
    0.004677377175539732, 
    0.04592541977763176, 
    0.13583073019981384, 
    -0.12092985212802887, 
    -0.019320841878652573, 
    -0.21391518414020538, 
    -0.06980286538600922, 
    0.021557394415140152, 
    0.023605693131685257, 
    0.08171644806861877, 
    -0.0007931540603749454, 
    -0.13957479596138, 
    -0.2644200325012207, 
    -0.050428666174411774, 
    -0.14386147260665894, 
    -0.06216886639595032, 
    -0.10189860314130783, 
    0.07591447979211807, 
    -0.03790362551808357, 
    -0.19505344331264496, 
    -0.07144550234079361, 
    -0.02896958962082863, 
    -0.014628843404352665, 
    -0.05096042901277542, 
    -0.03149348869919777, 
    0.16205467283725739, 
    -0.014681103639304638, 
    -0.1534486562013626, 
    0.07002919167280197, 
    0.017691005021333694, 
    0.23212191462516785, 
    0.28461524844169617, 
    0.04393422231078148, 
    0.007406830321997404, 
    -0.0667494386434555, 
    0.12363161891698837, 
    -0.21000072360038757, 
    0.04484770447015762, 
    0.08196330815553665, 
    0.19419421255588531, 
    0.08565515279769897, 
    0.08477208018302917, 
    -0.062397029250860214, 
    0.03586256131529808, 
    0.19043205678462982, 
    -0.19706463813781738, 
    0.07675327360630035, 
    -0.008550032041966915, 
    -0.056073904037475586, 
    0.04602653533220291, 
    -0.054616838693618774, 
    0.1550489068031311, 
    0.0980767086148262, 
    -0.055215515196323395, 
    -0.12292491644620895, 
    0.19491587579250336, 
    -0.10181313008069992, 
    -0.08815640211105347, 
    0.10483156889677048, 
    -0.1463075429201126, 
    -0.1943151354789734, 
    -0.36307355761528015, 
    0.0019835999701172113, 
    0.2729773223400116, 
    0.06862055510282516, 
    -0.25955745577812195, 
    -0.10726382583379745, 
    -0.023715542629361153, 
    -0.050271086394786835, 
    -0.030546264722943306, 
    0.05997417867183685, 
    -0.036544837057590485, 
    -0.16669771075248718, 
    -0.038568656891584396, 
    -0.0012851353967562318, 
    0.2839463949203491, 
    -0.12194297462701797, 
    -0.04722154885530472, 
    0.27628418803215027, 
    0.027833085507154465, 
    -0.1154521182179451, 
    0.009941279888153076, 
    0.05319127440452576, 
    -0.08169762790203094, 
    -0.03783651813864708, 
    -0.11832281202077866, 
    -0.032521460205316544, 
    -0.01882290653884411, 
    -0.13124090433120728, 
    -0.044754136353731155, 
    0.09568159282207489, 
    -0.21054679155349731, 
    0.1175103560090065, 
    -0.02225489914417267, 
    -0.015766633674502373, 
    -0.050016071647405624, 
    0.003715496975928545, 
    -0.07351867854595184, 
    -0.023898832499980927, 
    0.2528110146522522, 
    -0.1833934783935547, 
    0.21512359380722046, 
    0.2378043234348297, 
    -0.028991824015975, 
    0.025573965162038803, 
    -0.011868704110383987, 
    0.0875718891620636, 
    -0.013081471435725689, 
    0.0710655003786087, 
    -0.16031141579151154, 
    -0.12338098883628845, 
    0.06390980631113052, 
    0.01841309294104576, 
    -0.029620233923196793, 
    0.07459095120429993
  ]
}

```
## References
https://github.com/ageitgey/face_recognition
