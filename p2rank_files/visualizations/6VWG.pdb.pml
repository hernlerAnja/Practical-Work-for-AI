
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
        
        load "data/6VWG.pdb", protein
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
 
        load "data/6VWG.pdb_points.pdb.gz", points
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
select surf_pocket1, protein and id [4588,11716,11718,4554,11700,11714,11773,12408,12409,4587,4551,4638,4639,11769,11770,12378,12379,12327,4678,4531,4457,4460,4679,4635,4530,11651,11015,11631,11703,11648,9945,4936,4902,10004,11720,11781,11784,11785,1378,4626,12480,12479,12427,12477,12478,12424,12463,4517,4548,4552,4553,4527,4474,4476,4472,11025,11030,11031,4901,11012,11014,11045,11046,11047,9948,9946,9947,11049,9931,11009,11104,10005,9932,9933,11085,11084] 
set surface_color,  pcol1, surf_pocket1 
set_color pcol2 = [0.278,0.361,0.702]
select surf_pocket2, protein and id [12292,12289,11720,11783,11784,11785,1352,4626,888,890,430,432,433,12266,12267,471,12241,1333,1312,873,1314,1316,1355] 
set surface_color,  pcol2, surf_pocket2 
set_color pcol3 = [0.373,0.361,0.902]
select surf_pocket3, protein and id [372,23,3737,358,821,822,3352,25,3454,3456,3457,3735,3455,3378,1261,3366,3375,3379,3342,3522,3526] 
set surface_color,  pcol3, surf_pocket3 
set_color pcol4 = [0.380,0.278,0.702]
select surf_pocket4, protein and id [5309,11028,5350,11026,11029,11011,11063,11060,5876,5875,5840,5733,5732,5748,5841,5842,5787,9419,9420,9421,9422,6284] 
set surface_color,  pcol4, surf_pocket4 
set_color pcol5 = [0.600,0.361,0.902]
select surf_pocket5, protein and id [5474,5820,5822,6025,6537,5523,6028,6151,6538,5578,5641,5330,5290] 
set surface_color,  pcol5, surf_pocket5 
set_color pcol6 = [0.557,0.278,0.702]
select surf_pocket6, protein and id [11570,11527,11528,5401,5403,4932,4933,4934,5375,10997,10998,11000,5373,10999,5894,5895,11466,11509,11529,11467,5922,11507] 
set surface_color,  pcol6, surf_pocket6 
set_color pcol7 = [0.831,0.361,0.902]
select surf_pocket7, protein and id [8530,10921,10919,10920,10305,10320,10084,10360,10116,10118,10119,10300,10301,10318,10886,10425] 
set surface_color,  pcol7, surf_pocket7 
set_color pcol8 = [0.702,0.278,0.667]
select surf_pocket8, protein and id [10321,10322,9016,10304,11167,11165,8546,10288,9003,9479] 
set surface_color,  pcol8, surf_pocket8 
set_color pcol9 = [0.902,0.361,0.741]
select surf_pocket9, protein and id [5017,5057,5058,5059,1792,1815,1816,2184,1780,1798,5056,1822,1394,1395,1396,2235,2237,5004,2197,2236] 
set surface_color,  pcol9, surf_pocket9 
set_color pcol10 = [0.702,0.278,0.486]
select surf_pocket10, protein and id [8525,8529,9014,10321,10322,9016,11167,9479,8977,9003,8934,9457,9463,9468] 
set surface_color,  pcol10, surf_pocket10 
set_color pcol11 = [0.902,0.361,0.514]
select surf_pocket11, protein and id [10339,10257,7650,8046,8047,10289,8547,8603,8044,8048,8599,8576,8579,8669,8670,8671,8655,8656,8094,8096,8097,8098,10345] 
set surface_color,  pcol11, surf_pocket11 
set_color pcol12 = [0.702,0.278,0.310]
select surf_pocket12, protein and id [8013,8018,7979,7982,7997,8016,7575,8054,7591,7573,7971,8003,10352,10355,10346] 
set surface_color,  pcol12, surf_pocket12 
set_color pcol13 = [0.902,0.435,0.361]
select surf_pocket13, protein and id [6284,6319,6335,6829,6735,6777,9383,9419,9359,9363,9357,9358,9379,9380,6334] 
set surface_color,  pcol13, surf_pocket13 
set_color pcol14 = [0.702,0.427,0.278]
select surf_pocket14, protein and id [8586,7848,8136,8198,7847] 
set surface_color,  pcol14, surf_pocket14 
set_color pcol15 = [0.902,0.667,0.361]
select surf_pocket15, protein and id [5017,5059,1394,1395,1396,1397,2236,1414,2235,2237,2234,1412,2233] 
set surface_color,  pcol15, surf_pocket15 
set_color pcol16 = [0.702,0.608,0.278]
select surf_pocket16, protein and id [12021,966,968,11689,1516,1517] 
set surface_color,  pcol16, surf_pocket16 
set_color pcol17 = [0.902,0.894,0.361]
select surf_pocket17, protein and id [8587,8198,8740,8742] 
set surface_color,  pcol17, surf_pocket17 
   
        
        deselect
        
        orient
        