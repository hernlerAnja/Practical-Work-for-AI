
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
        
        load "data/6VWI.pdb", protein
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
 
        load "data/6VWI.pdb_points.pdb.gz", points
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
select surf_pocket1, protein and id [4626,4587,11717,11719,11721,11714,11771,11782,11785,11786,11770,4678,4679,12292,11784,4638,4623,4677,1333,1312,889,890,1355,430,432,1316,433,471,472,12240,12242,1313,872,873,11650,11647,4551,4552,4553,4534,4474,4554,4475,4476,11774,12428,4532,12349,12347,12345,12348,11652,11701,11704,11031,12480,12481,12479,4585,4899,4900,4902,4864,4901,11567,11630,11631,11632,11032] 
set surface_color,  pcol1, surf_pocket1 
set_color pcol2 = [0.278,0.353,0.702]
select surf_pocket2, protein and id [5330,5474,4883,5523,5290,5820,5579,5641,5233,5578,5181,5183,5524,5184,6151,5576,6023,4844] 
set surface_color,  pcol2, surf_pocket2 
set_color pcol3 = [0.388,0.361,0.902]
select surf_pocket3, protein and id [9421,9359,9383,6282,6283,6284,6319,9386,9420,9422,9358,9332,9333,9361,6333,6334,6335,5842,8891,8893,8890,6735,6703,6704,6732,6733,6734,6745,6829,6801,6777,8921,8922,8923,8477,8886,8478,8884,8887] 
set surface_color,  pcol3, surf_pocket3 
set_color pcol4 = [0.396,0.278,0.702]
select surf_pocket4, protein and id [8080,8081,7740,7698,7401,7737,8136,8375,8378,7847,8583,8586,9095,8135,7790,8198,7848,8709] 
set surface_color,  pcol4, surf_pocket4 
set_color pcol5 = [0.631,0.361,0.902]
select surf_pocket5, protein and id [1838,1882,1629,2771,2101,1837,1442,1709] 
set surface_color,  pcol5, surf_pocket5 
set_color pcol6 = [0.584,0.278,0.702]
select surf_pocket6, protein and id [3352,3366,3342,3453,3455,3456,3457,821,1259,3735,822,372,3737,25,807,357,23,3369,3380,1261,3375,3378] 
set surface_color,  pcol6, surf_pocket6 
set_color pcol7 = [0.875,0.361,0.902]
select surf_pocket7, protein and id [11690,1517,1917,11688,9964,11976,11977,1515,11758,11759,11971,11972,1498,1516,966,968] 
set surface_color,  pcol7, surf_pocket7 
set_color pcol8 = [0.702,0.278,0.627]
select surf_pocket8, protein and id [8099,8617,8653,8651,8096,8668,8671,8672,8044,8046,8047,8576,8547,8578,8615,8579,10339,10340,10341,10290,10258,8048,10289] 
set surface_color,  pcol8, surf_pocket8 
set_color pcol9 = [0.902,0.361,0.682]
select surf_pocket9, protein and id [5474,5822,5820,5579,6537,6045,6023,6151] 
set surface_color,  pcol9, surf_pocket9 
set_color pcol10 = [0.702,0.278,0.439]
select surf_pocket10, protein and id [9003,9013,9014,9015,9016,8602,9017,8621,8623,9070,8525,8972,8976,8977,9477,11168,10322,10323,10306] 
set surface_color,  pcol10, surf_pocket10 
set_color pcol11 = [0.902,0.361,0.439]
select surf_pocket11, protein and id [4936,11015,11565,11567,11569,11630,11631,11632,11568,10982,10980,11032,5373,11652,4902,4901,11650] 
set surface_color,  pcol11, surf_pocket11 
set_color pcol12 = [0.702,0.310,0.278]
select surf_pocket12, protein and id [9421,9359,6282,6283,6284,9420,9422,9358,9360,9361,6333,5748,5761,5789,5790,5842,5732,5841] 
set surface_color,  pcol12, surf_pocket12 
set_color pcol13 = [0.902,0.522,0.361]
select surf_pocket13, protein and id [6718,8309,9297,9292,9302,8840,8842,6806,8433,8434,8841,8399,8400,8837,8838,8305,8306,8307,8347,8348] 
set surface_color,  pcol13, surf_pocket13 
set_color pcol14 = [0.702,0.502,0.278]
select surf_pocket14, protein and id [11429,11430,11431,10085,10456,10458,10054,11428,11439,10951,10952,11491,11492,10035,10053,11425,11426,11438] 
set surface_color,  pcol14, surf_pocket14 
set_color pcol15 = [0.902,0.765,0.361]
select surf_pocket15, protein and id [1073,1074,1616,1617,2788,2789,2818,1058,1674,1100,1101,2833,1112,1113] 
set surface_color,  pcol15, surf_pocket15 
set_color pcol16 = [0.702,0.690,0.278]
select surf_pocket16, protein and id [9918,11119,11123,11143] 
set surface_color,  pcol16, surf_pocket16 
   
        
        deselect
        
        orient
        