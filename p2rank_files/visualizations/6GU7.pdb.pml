
        from pymol import cmd,stored
        
        set depth_cue, 1
        set fog_start, 0.4
        
        set_color b_col, [36,36,85]
        set_color t_col, [10,10,10]
        set bg_rgb_bottom, b_col
        set bg_rgb_top, t_col      
        set bg_gradient
        
        set  spec_power  =  200
        set  spec_refl   =  0
        
        load "data/6GU7.pdb", protein
        create ligands, protein and organic
        select xlig, protein and organic
        delete xlig
        
        hide everything, all
        
        color white, elem c
        color bluewhite, protein
        #show_as cartoon, protein
        show surface, protein
        #set transparency, 0.15
        
        show sticks, ligands
        set stick_color, magenta
        
        
        
        
        # SAS points
 
        load "data/6GU7.pdb_points.pdb.gz", points
        hide nonbonded, points
        show nb_spheres, points
        set sphere_scale, 0.2, points
        cmd.spectrum("b", "green_red", selection="points", minimum=0, maximum=0.7)
        
        
        stored.list=[]
        cmd.iterate("(resn STP)","stored.list.append(resi)")    # read info about residues STP
        lastSTP=stored.list[-1] # get the index of the last residue
        hide lines, resn STP
        
        cmd.select("rest", "resn STP and resi 0")
        
        for my_index in range(1,int(lastSTP)+1): cmd.select("pocket"+str(my_index), "resn STP and resi "+str(my_index))
        for my_index in range(1,int(lastSTP)+1): cmd.show("spheres","pocket"+str(my_index))
        for my_index in range(1,int(lastSTP)+1): cmd.set("sphere_scale","0.4","pocket"+str(my_index))
        for my_index in range(1,int(lastSTP)+1): cmd.set("sphere_transparency","0.1","pocket"+str(my_index))
        
        
        
        set_color pcol1 = [0.361,0.576,0.902]
select surf_pocket1, protein and id [102,1179,1180,1181,1082,507,638,639,640,641,642,643,1173,1071,691,692,693,690,1070,1098,1099,259,139,141,257,140,84,86,87,667,242,637,674,675,105,82,83,95] 
set surface_color,  pcol1, surf_pocket1 
set_color pcol2 = [0.278,0.380,0.702]
select surf_pocket2, protein and id [8930,9087,8967,8968,8969,9898,9926,9927,8912,8915,9488,9490,9491,9495,9492,9502,9501,10007,10009,9910,8933,8938,9468,9470,9070,9467,9466,9475,9335,9083,9084,10008,10001,8922,8929,8917,8923,9899,9519,9520,9902,8914,9503] 
set surface_color,  pcol2, surf_pocket2 
set_color pcol3 = [0.361,0.408,0.902]
select surf_pocket3, protein and id [3033,3017,3018,3024,3025,3028,3063,3064,3998,3993,3994,3614,3615,4022,3010,3165,3585,3590,3597,3598,3601,3587,3182,3563,3561,4103,4104,4005,4096,3430,4021,3570,3005,3006,3011,3012,3007,3009] 
set surface_color,  pcol3, surf_pocket3 
set_color pcol4 = [0.310,0.278,0.702]
select surf_pocket4, protein and id [7006,6571,6574,7005,6561,6554,7080,6597,6048,6047,6149,6544,6017,6978,6982,6977,6984,6165,7088,6989,6166,6009,6012,5680,6625,6626,5992,5994,5990,6598,6599,6582,6581,6585,6002] 
set surface_color,  pcol4, surf_pocket4 
set_color pcol5 = [0.482,0.361,0.902]
select surf_pocket5, protein and id [4580,4283,4284,4579,3633,4551,4530,3630,3628,3667,3668,3659,3631,3632,8240,8261,8241,8252,8220,8245,8242,8243,8244,8363,8268,8270,8271,3670,3669,8269,8605,3987,3988,3989,4506,3626,3997,4282,4295,4296,4550,4254,4256] 
set surface_color,  pcol5, surf_pocket5 
set_color pcol6 = [0.439,0.278,0.702]
select surf_pocket6, protein and id [2329,9537,9538,2691,9573,9574,9563,9568,9569,9572,9575,2698,10118,10384,10385,10364,2326,2327,2328,2338,2330,2449,2354,2355,2356,9535,9536,9533,10090,10129,10130,9893,10340] 
set surface_color,  pcol6, surf_pocket6 
set_color pcol7 = [0.651,0.361,0.902]
select surf_pocket7, protein and id [1282,1283,1505,1549,1550,1529,707,1253,1255,710,709,705,741,744,745,746,11518,736,11153,11174,11169,11165,11276,11176,11181,11154,11155,11156,11157,11182,11183] 
set surface_color,  pcol7, surf_pocket7 
set_color pcol8 = [0.573,0.278,0.702]
select surf_pocket8, protein and id [7197,6614,6615,7463,7419,7464,7443,6617,7169,6610,6612,6643,6651,5675,5311,5312,5313,5314,5315,5316,5317,5433,6652,6653] 
set surface_color,  pcol8, surf_pocket8 
set_color pcol9 = [0.820,0.361,0.902]
select surf_pocket9, protein and id [51,52,53,267,613,615,611,614,250,268,1,4,29] 
set surface_color,  pcol9, surf_pocket9 
set_color pcol10 = [0.702,0.278,0.698]
select surf_pocket10, protein and id [52,53,267,613,615,614,268,1,567,8712,8713,8714,592,593,594,579,566,8475] 
set surface_color,  pcol10, surf_pocket10 
set_color pcol11 = [0.902,0.361,0.812]
select surf_pocket11, protein and id [6614,6615,7443,6617,6612,6651,5675,5311,5312,5314,5322,5433,5338,5310,5326,5331,5682,5685,6652,6653,6654,5340] 
set surface_color,  pcol11, surf_pocket11 
set_color pcol12 = [0.702,0.278,0.565]
select surf_pocket12, protein and id [5158,5161,5163,5167,5162,5171,5172,5173,4402,3890,3886,3888,4403,4404,5175,3861,3863,3865,3866,3894] 
set surface_color,  pcol12, surf_pocket12 
set_color pcol13 = [0.902,0.361,0.643]
select surf_pocket13, protein and id [3033,3034,3028,3981,3982,4242,4261,4262,3045,3963,3965,3962,4104,4005,3044,4203,4204] 
set surface_color,  pcol13, surf_pocket13 
set_color pcol14 = [0.702,0.278,0.435]
select surf_pocket14, protein and id [3516,3517,11625,11627,2976,3538,3190,3191,3493,11393,11606,11608,11605,10687] 
set surface_color,  pcol14, surf_pocket14 
set_color pcol15 = [0.902,0.361,0.475]
select surf_pocket15, protein and id [5959,5960,6174,6175,6501,6522,6499,6520,6477,6486,2798,2561,2564] 
set surface_color,  pcol15, surf_pocket15 
set_color pcol16 = [0.702,0.278,0.302]
select surf_pocket16, protein and id [297,305,309,7247,7249,291,7737,7268,281,285,7518,7520,7519,8720,8721] 
set surface_color,  pcol16, surf_pocket16 
set_color pcol17 = [0.902,0.416,0.361]
select surf_pocket17, protein and id [1340,1831,1354,1356,1823,1360,6198,6204,6212,6188,6492,6191,2807,1335,1333,6216,1605,1606] 
set surface_color,  pcol17, surf_pocket17 
set_color pcol18 = [0.702,0.388,0.278]
select surf_pocket18, protein and id [8034,8035,8036,8028,7677,7276,7285,7680,7686,7694,7728] 
set surface_color,  pcol18, surf_pocket18 
set_color pcol19 = [0.902,0.584,0.361]
select surf_pocket19, protein and id [4127,3445,4105,4108,4112,4113,4114,4115,3564,4097,4098,4125,3566] 
set surface_color,  pcol19, surf_pocket19 
set_color pcol20 = [0.702,0.522,0.278]
select surf_pocket20, protein and id [1203,642,643,1190,1192,522,1202,1204] 
set surface_color,  pcol20, surf_pocket20 
set_color pcol21 = [0.902,0.753,0.361]
select surf_pocket21, protein and id [7099,6549,7092,7109,7111] 
set surface_color,  pcol21, surf_pocket21 
set_color pcol22 = [0.702,0.651,0.278]
select surf_pocket22, protein and id [11480,70,83,11523,719,11481,11482,86] 
set surface_color,  pcol22, surf_pocket22 
set_color pcol23 = [0.878,0.902,0.361]
select surf_pocket23, protein and id [8880,9443,9397,9398,9441,8878,9078,9442,8829,8832,9396] 
set surface_color,  pcol23, surf_pocket23 
   
        
        deselect
        
        orient
        