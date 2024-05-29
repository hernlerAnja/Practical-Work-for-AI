
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
        
        load "data/4KRP.pdb", protein
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
 
        load "data/4KRP.pdb_points.pdb.gz", points
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
select surf_pocket1, protein and id [8019,8021,8023,8024,7943,8451,7977,8022,7498,7499,7386,7692,7693,7978,7975,7910,7915,7918,7723,7515,7731,7895,7703,7690,7691,7700,7722,7724,7117,7122,8421,8452,8018,7350,7142,7143,7146] 
set surface_color,  pcol1, surf_pocket1 
set_color pcol2 = [0.278,0.322,0.702]
select surf_pocket2, protein and id [1303,1304,1107,1369,1440,1441,1466,1326,1328,924,715,752,890,1274,1126,1468,1270,713,714] 
set surface_color,  pcol2, surf_pocket2 
set_color pcol3 = [0.467,0.361,0.902]
select surf_pocket3, protein and id [2178,2179,2184,2187,2188,2200,1791,1746,1756,999,985,950,949,653,1732,672,673,676,347,348,349,20,2166,378] 
set surface_color,  pcol3, surf_pocket3 
set_color pcol4 = [0.490,0.278,0.702]
select surf_pocket4, protein and id [4170,4173,4190,13093,13095,4182,4146,12352,12007,11990,3733,3770,3772,3771,3168,3697,3165,3167,3696,2865,3202] 
set surface_color,  pcol4, surf_pocket4 
set_color pcol5 = [0.792,0.361,0.902]
select surf_pocket5, protein and id [237,238,239,240,279,59,60,280,145,202,203,464,113,83,86,96,247,250,428,429,301,432] 
set surface_color,  pcol5, surf_pocket5 
set_color pcol6 = [0.702,0.278,0.659]
select surf_pocket6, protein and id [5019,13056,4215,4982,4983,9239,9241,9281,9282,9218] 
set surface_color,  pcol6, surf_pocket6 
set_color pcol7 = [0.902,0.361,0.682]
select surf_pocket7, protein and id [8279,8280,7642,7528,7627,8182,8183,8196,8199,8218,2486,7617,7618,7529,7535,8235,8238,7527,8231,8222,8224,7536,7554,7561] 
set surface_color,  pcol7, surf_pocket7 
set_color pcol8 = [0.702,0.278,0.408]
select surf_pocket8, protein and id [9857,5076,9859,13127,12249,4650,12407] 
set surface_color,  pcol8, surf_pocket8 
set_color pcol9 = [0.902,0.361,0.361]
select surf_pocket9, protein and id [3981,4455,5458,3926,3929,3900,3901,5413,5427,5481,5429,3886,4396] 
set surface_color,  pcol9, surf_pocket9 
set_color pcol10 = [0.702,0.408,0.278]
select surf_pocket10, protein and id [10963,13961,13991,13992,10932,10933,10500,10501,13960,13967,13970] 
set surface_color,  pcol10, surf_pocket10 
set_color pcol11 = [0.902,0.682,0.361]
select surf_pocket11, protein and id [8481,9909,12440,12231,12466,8489,9904,9907,9917,9920,12224,12227,12228,12207,9880,9881,12439] 
set surface_color,  pcol11, surf_pocket11 
set_color pcol12 = [0.702,0.659,0.278]
select surf_pocket12, protein and id [7371,7372,7477,7480,8273,8254,8306,8310,8309,8371,8298,8313] 
set surface_color,  pcol12, surf_pocket12 
   
        
        deselect
        
        orient
        