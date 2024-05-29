
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
        
        load "data/8D7O.pdb", protein
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
 
        load "data/8D7O.pdb_points.pdb.gz", points
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
select surf_pocket1, protein and id [5052,6818,7062,7078,4979,4980,9582,5049,5050,7059,5233,5051,5258,5964,5965,5578,5579,6772,4971,4972,4977,9580,9581,5265,5266,5934,5262,5264,4989,6803,6852,6853,7061,6103,6055,198,5980,6011,6015,6016,6017,5723,5724,217,4954,196,6807,6804,6102,6056,6086,220,221,222] 
set surface_color,  pcol1, surf_pocket1 
set_color pcol2 = [0.278,0.278,0.702]
select surf_pocket2, protein and id [335,336,2347,4911,516,547,4910,518,1296,2138,4913,1265,1300,1301,517,543,1219,1250,265,274,314,337,9480,9478,549,550,551,2103,2360,2363,2364,2366,9479,2344,2346,2359,1008,1009,1302,1252,863,864,795,239,256,262,2057,2089,2090,2092,2091,2088,1340,9448,1371,4932,4936,4937,1387,1388,1439] 
set surface_color,  pcol2, surf_pocket2 
set_color pcol3 = [0.576,0.361,0.902]
select surf_pocket3, protein and id [5038,5040,5026,5027,5283,5284,5009,4998,5008,5319,5314,5368,5304,1434,1436,1435,5074,5884,5886,1446,1447,1482] 
set surface_color,  pcol3, surf_pocket3 
set_color pcol4 = [0.616,0.278,0.702]
select surf_pocket4, protein and id [3,146,6960,2,5,8,145,6911,6962,15,19,9408,9409,9412,9414,6973,6042,6043,6115,6114,6885,167] 
set surface_color,  pcol4, surf_pocket4 
set_color pcol5 = [0.902,0.361,0.792]
select surf_pocket5, protein and id [4720,4723,4717,4730,2245,2246,2196,2247,1327,1399,1328,1400,4697,4699,4882,4883,4733,4734,2181,2193,4862,2170] 
set surface_color,  pcol5, surf_pocket5 
set_color pcol6 = [0.702,0.278,0.447]
select surf_pocket6, protein and id [9345,9347,9305,9137,9138,9310,9312,6377,6422,6423,6424,6425,6373,9136,9132,9134,9135,9192,9193,9194,6354,6371,9198,9197,9195] 
set surface_color,  pcol6, surf_pocket6 
set_color pcol7 = [0.902,0.361,0.361]
select surf_pocket7, protein and id [7557,6089,6211,6087,6088,6807,6806,6086,9553,9552,8140] 
set surface_color,  pcol7, surf_pocket7 
set_color pcol8 = [0.702,0.447,0.278]
select surf_pocket8, protein and id [5521,5519,5528,5598,5535,5536,5817,5818,5825,5472,5474] 
set surface_color,  pcol8, surf_pocket8 
set_color pcol9 = [0.902,0.792,0.361]
select surf_pocket9, protein and id [2867,1374,1496,2842,3278,1372,1373,3425,9450,2077,2092] 
set surface_color,  pcol9, surf_pocket9 
   
        
        deselect
        
        orient
        